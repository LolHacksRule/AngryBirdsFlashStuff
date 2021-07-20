package com.rovio.server
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class RetryingURLLoader extends URLLoader
   {
       
      
      protected var mRetryCount:int;
      
      protected var mRequest:URLRequest;
      
      protected var mDelay:Number;
      
      protected var mDelayTimer:Timer;
      
      protected var mErrorIntercepted:Boolean = false;
      
      protected var mPendingRequest:URLRequest;
      
      public function RetryingURLLoader(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.mRetryCount = param2;
         this.mRequest = param1;
         this.mDelay = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.onStatus);
      }
      
      public function setPendingURLRequest(param1:URLRequest) : void
      {
         this.mPendingRequest = param1;
      }
      
      public function loadPendingURLRequest() : void
      {
         if(this.mPendingRequest == null)
         {
            throw new Error("Pending request is null.");
         }
         this.load(this.mPendingRequest);
         this.mPendingRequest = null;
      }
      
      protected function onStatus(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.mRetryCount = 0;
            this.mErrorIntercepted = true;
            super.dispatchEvent(new RetryingURLLoaderErrorEvent(RetryingURLLoaderErrorEvent.THIRD_PARTY_COOKIES_DISABLED));
         }
         else if(param1.status == 400)
         {
            this.mRetryCount = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.mRetryCount > 0)
         {
            --this.mRetryCount;
            super.load(this.mRequest);
            return true;
         }
         if(!this.mErrorIntercepted)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.mRequest = param1;
         if(this.mDelay > 0)
         {
            this.mDelayTimer = new Timer(this.mDelay);
            this.mDelayTimer.addEventListener(TimerEvent.TIMER,this.onDelayComplete);
            this.mDelayTimer.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function onDelayComplete(param1:TimerEvent) : void
      {
         this.mDelayTimer.removeEventListener(TimerEvent.TIMER,this.onDelayComplete);
         this.mDelayTimer.reset();
         this.mDelayTimer = null;
         this.mDelay = 0;
         super.load(this.mRequest);
      }
   }
}
