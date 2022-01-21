using Devon4Net.Infrastructure.Common.Exceptions;
using Microsoft.AspNetCore.Http;

namespace Devon4Net.Application.WebAPI.Implementation.Business.VisitorManagement.Exceptions
{
    /// <summary>
    /// Custom exception MustAcceptTerms
    /// </summary>
    [Serializable]
    internal class MustAcceptTerms : Exception, IWebApiException
    {
        /// <summary>
        /// The forced http status code to be fired on the exception manager
        /// </summary>
        public int StatusCode => StatusCodes.Status400BadRequest;

        /// <summary>
        /// Show the message on the response?
        /// </summary>
        public bool ShowMessage => true;

        /// <summary>
        /// Initializes a new instance of the <see cref="MustAcceptTerms"/> class.
        /// </summary>
        public MustAcceptTerms()
        {
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="MustAcceptTerms"/> class.
        /// </summary>
        /// <param name="message">The message that describes the error.</param>
        public MustAcceptTerms(string message)
            : base(message)
        {
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="MustAcceptTerms"/> class.
        /// </summary>
        /// <param name="message"></param>
        /// <param name="innerException"></param>
        public MustAcceptTerms(string message, Exception innerException) : base(message, innerException)
        {
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="MustAcceptTerms"/> class.
        /// </summary>
        /// <param name="serializationInfo"></param>
        /// <param name="streamingContext"></param>
        protected MustAcceptTerms(System.Runtime.Serialization.SerializationInfo serializationInfo, System.Runtime.Serialization.StreamingContext streamingContext)
            : base(serializationInfo, streamingContext)
        {
        }
    }
}
