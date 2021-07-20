package com.angrybirds.utils
{
   import com.rovio.adobe.serialization.json.JSONRovio;
   import com.rovio.externalInterface.ExternalInterfaceHandler;
   import flash.net.SharedObject;
   
   public class SharedObjectHandler
   {
      
      protected static const LIFE_TIME_OF_COOKIE:int = 365;
      
      protected static const BROWSERS_TO_USE_JAVASCRIPT:Array = [BrowserDetector.CHROME];
       
      
      public var data:Object;
      
      private var mCurrentBrowser:String = "";
      
      private var mJSEnabled:Boolean = false;
      
      private var mCurrentKey:String = "";
      
      public function SharedObjectHandler(param1:String)
      {
         super();
         this.mCurrentBrowser = BrowserDetector.getBrowser();
         this.mCurrentKey = param1;
         this.mJSEnabled = BROWSERS_TO_USE_JAVASCRIPT.indexOf(this.mCurrentBrowser) != -1;
         this.getSharedObject();
      }
      
      public static function getLocal(param1:String) : SharedObjectHandler
      {
         return new SharedObjectHandler(param1);
      }
      
      public function clear() : void
      {
         var _loc1_:SharedObject = null;
         if(this.mJSEnabled)
         {
            this.clearJavascript();
         }
         else
         {
            _loc1_ = SharedObject.getLocal(this.mCurrentKey);
            _loc1_.clear();
         }
      }
      
      public function flush() : void
      {
         if(this.data != null)
         {
            if(this.mJSEnabled)
            {
               this.flushJavascript();
            }
            else
            {
               this.flushFlash();
            }
         }
      }
      
      private function clearJavascript() : void
      {
         ExternalInterfaceHandler.performCall("deleteCookie",this.mCurrentKey);
      }
      
      private function flushJavascript() : void
      {
         var _loc1_:String = JSONRovio.encode(this.data);
         ExternalInterfaceHandler.performCall("storeCookie",this.mCurrentKey,_loc1_,LIFE_TIME_OF_COOKIE);
      }
      
      private function flushFlash() : void
      {
         var mySO:SharedObject = null;
         var i:String = null;
         try
         {
            mySO = SharedObject.getLocal(this.mCurrentKey);
            for(i in this.data)
            {
               mySO.data[i] = this.data[i];
            }
            mySO.flush();
         }
         catch(e:Error)
         {
         }
      }
      
      private function getSharedObject() : void
      {
         if(this.mJSEnabled)
         {
            this.getJSSharedObject();
         }
         else
         {
            this.getFlashSharedObject();
         }
      }
      
      private function getFlashSharedObject() : void
      {
         var mySO:SharedObject = null;
         try
         {
            mySO = SharedObject.getLocal(this.mCurrentKey);
            this.data = mySO.data;
         }
         catch(e:Error)
         {
            data = new Object();
         }
      }
      
      private function getJSSharedObject() : void
      {
         var returnObject:String = ExternalInterfaceHandler.performCall("readCookie",this.mCurrentKey);
         try
         {
            this.data = JSONRovio.decode(returnObject,false);
         }
         catch(e:Error)
         {
            data = new Object();
         }
      }
   }
}
