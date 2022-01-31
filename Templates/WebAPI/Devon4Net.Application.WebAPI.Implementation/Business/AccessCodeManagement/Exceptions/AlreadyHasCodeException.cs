using Devon4Net.Infrastructure.Common.Exceptions;
using Microsoft.AspNetCore.Http;

namespace Devon4Net.Application.WebAPI.Implementation.Business.AccessCodeManagement.Exceptions
{
    /// <summary>
    /// Custom exception AlreadyHasCodeException
    /// </summary>
    [Serializable]
    public class AlreadyHasCodeException: Exception, IWebApiException
    {
        /// <summary>
        /// The forced http status code to be fired on the exception manager
        /// </summary>
        public int StatusCode => StatusCodes.Status409Conflict;

        /// <summary>
        /// Show the message on the response?
        /// </summary>
        public bool ShowMessage => true;

        /// <summary>
        /// Initializes a new instance of the <see cref="AlreadyHasCodeException"/> class.
        /// </summary>
        public AlreadyHasCodeException()
        {
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="AlreadyHasCodeException"/> class.
        /// </summary>
        /// <param name="message">The message that describes the error.</param>
        public AlreadyHasCodeException(string message)
            : base(message)
        {
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="AlreadyHasCodeException"/> class.
        /// </summary>
        /// <param name="message"></param>
        /// <param name="innerException"></param>
        public AlreadyHasCodeException(string message, Exception innerException) : base(message, innerException)
        {
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="AlreadyHasCodeException"/> class.
        /// </summary>
        /// <param name="serializationInfo"></param>
        /// <param name="streamingContext"></param>
        protected AlreadyHasCodeException(System.Runtime.Serialization.SerializationInfo serializationInfo, System.Runtime.Serialization.StreamingContext streamingContext)
            : base(serializationInfo, streamingContext)
        {
        }
    }
}
