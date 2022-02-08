using Devon4Net.Infrastructure.Common.Exceptions;
using Microsoft.AspNetCore.Http;

namespace Devon4Net.Application.WebAPI.Implementation.Exceptions
{
    /// <summary>
    /// Custom exception NullOrWhiteSpaceArgument
    /// </summary>
    [Serializable]
    public class NullOrWhiteSpaceArgumentException : Exception, IWebApiException
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
        /// Initializes a new instance of the <see cref="NullOrWhiteSpaceArgumentException"/> class.
        /// </summary>
        public NullOrWhiteSpaceArgumentException()
        {
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="NullOrWhiteSpaceArgumentException"/> class.
        /// </summary>
        /// <param name="message">The message that describes the error.</param>
        public NullOrWhiteSpaceArgumentException(string message)
            : base(message)
        {
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="NullOrWhiteSpaceArgumentException"/> class.
        /// </summary>
        /// <param name="message"></param>
        /// <param name="innerException"></param>
        public NullOrWhiteSpaceArgumentException(string message, Exception innerException) : base(message, innerException)
        {
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="NullOrWhiteSpaceArgumentException"/> class.
        /// </summary>
        /// <param name="serializationInfo"></param>
        /// <param name="streamingContext"></param>
        protected NullOrWhiteSpaceArgumentException(System.Runtime.Serialization.SerializationInfo serializationInfo, System.Runtime.Serialization.StreamingContext streamingContext)
            : base(serializationInfo, streamingContext)
        {
        }
    }
}
