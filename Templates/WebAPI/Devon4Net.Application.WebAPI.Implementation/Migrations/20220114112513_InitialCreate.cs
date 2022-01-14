using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Devon4Net.Application.WebAPI.Implementation.Migrations
{
    public partial class InitialCreate : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterDatabase()
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.CreateTable(
                name: "prueba",
                columns: table => new
                {
                    ID = table.Column<string>(type: "varchar(100)", maxLength: 100, nullable: false, collation: "utf8_general_ci")
                        .Annotation("MySql:CharSet", "utf8"),
                    Nombre = table.Column<string>(type: "varchar(100)", maxLength: 100, nullable: true, collation: "utf8_general_ci")
                        .Annotation("MySql:CharSet", "utf8")
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_prueba", x => x.ID);
                })
                .Annotation("MySql:CharSet", "utf8")
                .Annotation("Relational:Collation", "utf8_general_ci");

            migrationBuilder.CreateTable(
                name: "Queue",
                columns: table => new
                {
                    IDQueue = table.Column<string>(type: "varchar(100)", maxLength: 100, nullable: false, collation: "utf8_general_ci")
                        .Annotation("MySql:CharSet", "utf8"),
                    name = table.Column<string>(type: "varchar(100)", maxLength: 100, nullable: false, collation: "utf8_general_ci")
                        .Annotation("MySql:CharSet", "utf8"),
                    logo = table.Column<string>(type: "varchar(100)", maxLength: 100, nullable: true, collation: "utf8_general_ci")
                        .Annotation("MySql:CharSet", "utf8"),
                    currentNumber = table.Column<string>(type: "varchar(100)", maxLength: 100, nullable: true, defaultValueSql: "'1'", collation: "utf8_general_ci")
                        .Annotation("MySql:CharSet", "utf8"),
                    attentionTime = table.Column<string>(type: "varchar(100)", maxLength: 100, nullable: true, collation: "utf8_general_ci")
                        .Annotation("MySql:CharSet", "utf8"),
                    minAttentionTime = table.Column<string>(type: "varchar(100)", maxLength: 100, nullable: true, collation: "utf8_general_ci")
                        .Annotation("MySql:CharSet", "utf8"),
                    Active = table.Column<bool>(type: "tinyint(1)", nullable: true),
                    customers = table.Column<int>(type: "int", nullable: true, defaultValueSql: "'0'")
                },
                constraints: table =>
                {
                    table.PrimaryKey("PRIMARY", x => x.IDQueue);
                })
                .Annotation("MySql:CharSet", "utf8")
                .Annotation("Relational:Collation", "utf8_general_ci");

            migrationBuilder.CreateTable(
                name: "Visitor",
                columns: table => new
                {
                    IDVisitor = table.Column<string>(type: "varchar(100)", maxLength: 100, nullable: false, collation: "utf8_general_ci")
                        .Annotation("MySql:CharSet", "utf8"),
                    username = table.Column<string>(type: "varchar(100)", maxLength: 100, nullable: false, collation: "utf8_general_ci")
                        .Annotation("MySql:CharSet", "utf8"),
                    name = table.Column<string>(type: "varchar(100)", maxLength: 100, nullable: false, collation: "utf8_general_ci")
                        .Annotation("MySql:CharSet", "utf8"),
                    password = table.Column<string>(type: "varchar(100)", maxLength: 100, nullable: false, collation: "utf8_general_ci")
                        .Annotation("MySql:CharSet", "utf8"),
                    phoneNumber = table.Column<string>(type: "varchar(100)", maxLength: 100, nullable: true, collation: "utf8_general_ci")
                        .Annotation("MySql:CharSet", "utf8"),
                    acceptedCommercial = table.Column<bool>(type: "tinyint(1)", nullable: true),
                    acceptedTerms = table.Column<bool>(type: "tinyint(1)", nullable: true),
                    userType = table.Column<bool>(type: "tinyint(1)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PRIMARY", x => x.IDVisitor);
                })
                .Annotation("MySql:CharSet", "utf8")
                .Annotation("Relational:Collation", "utf8_general_ci");

            migrationBuilder.CreateTable(
                name: "AccessCode",
                columns: table => new
                {
                    IDAccessCode = table.Column<string>(type: "varchar(100)", maxLength: 100, nullable: false, collation: "utf8_general_ci")
                        .Annotation("MySql:CharSet", "utf8"),
                    ticketNumber = table.Column<string>(type: "varchar(100)", maxLength: 100, nullable: false, collation: "utf8_general_ci")
                        .Annotation("MySql:CharSet", "utf8"),
                    creationTime = table.Column<string>(type: "varchar(100)", maxLength: 100, nullable: true, collation: "utf8_general_ci")
                        .Annotation("MySql:CharSet", "utf8"),
                    startTime = table.Column<string>(type: "varchar(100)", maxLength: 100, nullable: true, collation: "utf8_general_ci")
                        .Annotation("MySql:CharSet", "utf8"),
                    endTime = table.Column<string>(type: "varchar(100)", maxLength: 100, nullable: true, collation: "utf8_general_ci")
                        .Annotation("MySql:CharSet", "utf8"),
                    visitorID = table.Column<string>(type: "varchar(100)", maxLength: 100, nullable: false, collation: "utf8_general_ci")
                        .Annotation("MySql:CharSet", "utf8"),
                    queueID = table.Column<string>(type: "varchar(100)", maxLength: 100, nullable: false, collation: "utf8_general_ci")
                        .Annotation("MySql:CharSet", "utf8")
                },
                constraints: table =>
                {
                    table.PrimaryKey("PRIMARY", x => x.IDAccessCode);
                    table.ForeignKey(
                        name: "AccessCode_FK",
                        column: x => x.visitorID,
                        principalTable: "Visitor",
                        principalColumn: "IDVisitor");
                    table.ForeignKey(
                        name: "AccessCode_FK_1",
                        column: x => x.queueID,
                        principalTable: "Queue",
                        principalColumn: "IDQueue");
                })
                .Annotation("MySql:CharSet", "utf8")
                .Annotation("Relational:Collation", "utf8_general_ci");

            migrationBuilder.CreateIndex(
                name: "AccessCode_FK",
                table: "AccessCode",
                column: "visitorID");

            migrationBuilder.CreateIndex(
                name: "AccessCode_FK_1",
                table: "AccessCode",
                column: "queueID");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "AccessCode");

            migrationBuilder.DropTable(
                name: "prueba");

            migrationBuilder.DropTable(
                name: "Visitor");

            migrationBuilder.DropTable(
                name: "Queue");
        }
    }
}
