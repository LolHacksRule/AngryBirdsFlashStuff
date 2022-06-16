package com.rovio.server
{
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.net.URLRequest;
   
   public class SessionRetryingURLLoader extends RetryingURLLoader
   {
      
      protected static var sSessionToken:String;
      
      protected static var sDefaultErrorHandler:Function;
       
      
      public function SessionRetryingURLLoader(request:URLRequest = null, retryCount:int = 3, debugDelay:Number = 0)
      {
         super(request,retryCount,debugDelay);
      }
      
      public static function get sessionToken() : String
      {
         return sSessionToken;
      }
      
      public static function set defaultErrorHandler(value:Function) : void
      {
         sDefaultErrorHandler = value;
      }
      
      override public function dispatchEvent(e:Event) : Boolean
      {
         var throwError:Error = null;
         var cancelDispatch:Boolean = false;
         if(sDefaultErrorHandler != null && e is ErrorEvent && !hasEventListener(e.type))
         {
            sDefaultErrorHandler(e);
            return true;
         }
         if(e.type == Event.COMPLETE)
         {
            try
            {
               if(super.data == "")
               {
                  data = {};
               }
               else
               {
                  data = JSON.parse(super.data);
               }
            }
            catch(err:Error)
            {
               throwError = new Error("Error loading from \'" + mRequest.url + "\': " + e.toString() + ", " + err.toString() + "\n" + super.data,err.errorID);
               if(sDefaultErrorHandler != null)
               {
                  sDefaultErrorHandler(throwError);
                  return true;
               }
               throw throwError;
            }
            if(data.error && data.retryAfterSeconds && mRetryCount > 0)
            {
               --mRetryCount;
               mDelay = data.retryAfterSeconds * 1000;
               super.load(mRequest);
               return true;
            }
            if(data.error && sDefaultErrorHandler != null)
            {
               sDefaultErrorHandler(new ErrorEvent(ErrorEvent.ERROR,false,false,data.error));
               return true;
            }
            if(data.st != undefined)
            {
               sSessionToken = data.st;
            }
            cancelDispatch = this.initData();
         }
         if(cancelDispatch)
         {
            return false;
         }
         return super.dispatchEvent(e);
      }
      
      protected function initData() : Boolean
      {
         return false;
      }
      
      override public function load(request:URLRequest) : void
      {
         this.addSessionToRequest(request);
         super.load(request);
      }
      
      private function addSessionToRequest(request:URLRequest) : void
      {
         if(sSessionToken)
         {
            if(request.url.indexOf("?") == -1)
            {
               request.url += "?st=" + sSessionToken;
            }
            else
            {
               request.url += "&st=" + sSessionToken;
            }
         }
      }
   }
}
