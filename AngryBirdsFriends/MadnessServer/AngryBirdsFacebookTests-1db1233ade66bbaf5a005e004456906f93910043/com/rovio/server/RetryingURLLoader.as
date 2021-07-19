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
      
      public function RetryingURLLoader(request:URLRequest = null, retryCount:int = 3, delay:Number = 0)
      {
         this.mRetryCount = retryCount;
         this.mRequest = request;
         this.mDelay = delay;
         super(request);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.onStatus);
      }
      
      public function setPendingURLRequest(value:URLRequest) : void
      {
         this.mPendingRequest = value;
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
      
      protected function onStatus(e:HTTPStatusEvent) : void
      {
         if(e.status == 403)
         {
            this.mRetryCount = 0;
            this.mErrorIntercepted = true;
            super.dispatchEvent(new RetryingURLLoaderErrorEvent(RetryingURLLoaderErrorEvent.THIRD_PARTY_COOKIES_DISABLED));
         }
         else if(e.status == 400)
         {
            this.mRetryCount = 0;
         }
      }
      
      override public function dispatchEvent(event:Event) : Boolean
      {
         if((event.type == IOErrorEvent.IO_ERROR || event.type == SecurityErrorEvent.SECURITY_ERROR) && this.mRetryCount > 0)
         {
            --this.mRetryCount;
            super.load(this.mRequest);
            return true;
         }
         if(!this.mErrorIntercepted)
         {
            return super.dispatchEvent(event);
         }
         return true;
      }
      
      override public function load(request:URLRequest) : void
      {
         this.mRequest = request;
         if(this.mDelay > 0)
         {
            this.mDelayTimer = new Timer(this.mDelay);
            this.mDelayTimer.addEventListener(TimerEvent.TIMER,this.onDelayComplete);
            this.mDelayTimer.start();
         }
         else
         {
            super.load(request);
         }
      }
      
      protected function onDelayComplete(e:TimerEvent) : void
      {
         this.mDelayTimer.removeEventListener(TimerEvent.TIMER,this.onDelayComplete);
         this.mDelayTimer.reset();
         this.mDelayTimer = null;
         this.mDelay = 0;
         super.load(this.mRequest);
      }
   }
}
