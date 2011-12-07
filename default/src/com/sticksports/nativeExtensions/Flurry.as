/*
 Air Native Extension for  Flurry analytics on iOS
 .................................................

 Author: Richard Lord
 Owner: Stick Sports Ltd.
 http://www.sticksports.com

 Copyright (c) 2011, Stick Sports Ltd.
 All rights reserved.

 Redistribution and use in source and binary forms, with or without modification,
 are permitted provided that the following conditions are met:

 - Redistributions of source code must retain the above copyright notice, this
   list of conditions and the following disclaimer.
 - Redistributions in binary form must reproduce the above copyright notice, this
   list of conditions and the following disclaimer in the documentation and/or
   other materials provided with the distribution.
 - Neither the name of Stick Sports Ltd. nor the names of its contributors may be
   used to endorse or promote products derived from this software without specific
   prior written permission.

 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
 IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT,
 INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
 NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
 PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 POSSIBILITY OF SUCH DAMAGE.
*/

package com.sticksports.nativeExtensions
{
	/**
	 * Default implementation
	 */
	public class Flurry
	{
		public static const GENDER_MALE : String = "m";
		public static const GENDER_FEMALE : String = "f";
		
		/**
		 * Is the extension supported
		 */
		public static function get isSupported() : Boolean
		{
			return false;
		}
		
		private static var _sessionStarted : Boolean;
		private static var _showErrorInLog : Boolean = false;
		private static var _debugLogEnabled : Boolean = false;
		private static var _sessionContinueSeconds : int = 10;
		private static var _secureTransportEnabled : Boolean = false;
		private static var _sessionReportsOnClose : Boolean = true;
		private static var _sessionReportsOnPause : Boolean = true;
		private static var _eventLoggingEnabled : Boolean = true;

		/**
		 * Override the app version. Should be called before start session.
		 */
		public static function setAppVersion( version : String ) : void
		{
		}
		
		/**
		 * The Flurry Agent version number. Should be called before start session.
		 */
		public static function get flurryAgentVersion() : String
		{
			return "0.0.0";
		}
		
		/**
		 * Should be called before start session. Default is false.
		 */
		public static function get showErrorInLog() : Boolean
		{
			return _showErrorInLog;
		}
		public static function set showErrorInLog( value : Boolean ) : void
		{
			if( !_sessionStarted )
			{
				_showErrorInLog = value;
			}
		}
		
		/**
		 * Generate debug logs for Flurry support. Should be called before start session. Default is false.
		 */
		public static function get debugLogEnabled() : Boolean
		{
			return _debugLogEnabled;
		}
		public static function set debugLogEnabled( value : Boolean ) : void
		{
			if( !_sessionStarted )
			{
				_debugLogEnabled = value;
			}
		}
		
		/**
		 * Should be called before start session. Default is 10.
		 */
		public static function get sessionContinueSeconds() : int
		{
			return _sessionContinueSeconds;
		}
		public static function set sessionContinueSeconds( seconds : int ) : void
		{
			if( !_sessionStarted )
			{
				_sessionContinueSeconds = seconds;
			}
		}
		
		/**
		 * Set data to be sent over SSL. Should be called before start session. Default is false.
		 */
		public static function get secureTransportEnabled() : Boolean
		{
			return _secureTransportEnabled;
		}
		public static function set secureTransportEnabled( value : Boolean ) : void
		{
			if( !_sessionStarted )
			{
				_secureTransportEnabled = value;
			}
		}
		
		/**
		 * Start session, attempt to send saved sessions to the server.
		 */
		public static function startSession( id : String ) : void
		{
			_sessionStarted = true;
		}
		
		/**
		 * Log events.
		 */
		public static function logEvent( eventName : String, parameters : Object = null ) : void
		{
		}
		
		/**
		 * Log errors.
		 */
		public static function logError( errorId : String, message : String ) : void
		{
		}
		
		/**
		 * Log timed events.
		 */
		public static function startTimedEvent( eventName : String, parameters : Object = null ) : void
		{
		}
		
		/**
		 * Log timed events. Non-null parameters will updater the event parameters.
		 */
		public static function endTimedEvent( eventName : String, parameters : Object = null ) : void
		{
		}
		
		/**
		 * Set user's id in your system.
		 */
		public static function setUserId( id : String ) : void
		{
		}
		
		/**
		 * Set user's age in years
		 */
		public static function setUserAge( age : int ) : void
		{
		}
		
		/**
		 * Set user's gender ("m" or "f")
		 */
		public static function setUserGender( gender : String ) : void
		{
		}
		
		/**
		 * Set location information
		 */
		public static function setLocation( latitude : Number, longitude : Number, horizontalAccuracy : Number, verticalAccuracy : Number ) : void
		{
		}
		
		/**
		 * Default is true.
		 */
		public static function get sessionReportsOnClose() : Boolean
		{
			return _sessionReportsOnClose;
		}
		public static function set sessionReportsOnClose( value : Boolean ) : void
		{
			_sessionReportsOnClose = value;
		}
		
		/**
		 * Default is true.
		 */
		public static function get sessionReportsOnPause() : Boolean
		{
			return _sessionReportsOnPause;
		}
		public static function set sessionReportsOnPause( value : Boolean ) : void
		{
			_sessionReportsOnPause = value;
		}
		
		/**
		 * Enable logging. Default is true.
		 */
		public static function get eventLoggingEnabled() : Boolean
		{
			return _eventLoggingEnabled;
		}
		public static function set eventLoggingEnabled( value : Boolean ) : void
		{
			_eventLoggingEnabled = value;
		}
		
		/**
		 * Clean up the extension - only if you no longer need it or want to free memory.
		 */
		public static function dispose() : void
		{
		}
	}
}

