package com.angrybirds.data
{
   import com.angrybirds.user.UserManager;
   import com.rovio.server.RetryingURLLoader;
   import com.rovio.adobe.serialization.json.JSONRovio;
   import com.rovio.adobe.crypto.SHA1;
   import com.angrybirds.utils.IHTTPResponseListener;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class ServerCall
   {
      
      public static const SERIALIZATION_JSON:String = "serializationJSON";
      
      public static const SERIALIZATION_URL_PARAMETERS:String = "serializationURLParameters";
      
      public static const SECURITY_KEY_PROFILE:String = "09sb85etmnspa89j3mx7han3689ngp9a";
      
      public static const SECURITY_KEY_ITEMS:String = "3v9a8crja089ph7st8oh7apr9cm8ja43";
      
      private static const SECRET_DELIMETER:String = "|";
      
      private static const MAX_TOKENS:int = 500;
       
      
      private var mUrlLoader:URLLoader;
      
      private var mResponseListener:IHTTPResponseListener;
      
      private var mServerCallHasCompleted:Boolean = false;
      
      public function ServerCall(param1:Object, param2:String, param3:IHTTPResponseListener, param4:String)
      {
         super();
         this.mUrlLoader = new RetryingURLLoader();
         this.mResponseListener = param3;
         var _loc5_:URLRequest;
         (_loc5_ = new URLRequest()).method = URLRequestMethod.POST;
         this.mUrlLoader.dataFormat = URLLoaderDataFormat.TEXT;
         switch(param4)
         {
            case SERIALIZATION_JSON:
               _loc5_.contentType = "application/json";
               _loc5_.data = JSONRovio.encode(param1);
               break;
            case SERIALIZATION_URL_PARAMETERS:
               _loc5_.data = this.createVariables(param1);
         }
         this.mUrlLoader.addEventListener(Event.COMPLETE,this.onComplete);
         this.mUrlLoader.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.onHttpStatus);
         this.mUrlLoader.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
         _loc5_.url = param2;
         this.mServerCallHasCompleted = false;
         this.mUrlLoader.load(_loc5_);
      }
      
      public static function getSecurityHashForLevel(param1:Object) : String
      {
         return SHA1.hash([param1.levelId,param1.score,UserManager.playerObject.id,SECURITY_KEY_PROFILE,param1.blocks,param1.gamePlay].join("|"));
      }
      
      public static function getSecurityHashForLevelProfile(param1:Array) : String
      {
         var _loc3_:Object = null;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.levelId + "|";
         }
         _loc2_ += SECURITY_KEY_PROFILE;
         return SHA1.hash(_loc2_);
      }
      
      public static function getSecurityHashForPowerUp(param1:String, param2:Array) : String
      {
         var _loc5_:Object = null;
         var _loc3_:String = SECURITY_KEY_ITEMS;
         _loc3_ = SHA1.hash(param1 + SECRET_DELIMETER + _loc3_);
         var _loc4_:String = "";
         for each(_loc5_ in param2)
         {
            _loc4_ += _loc5_.type + _loc5_.count;
            _loc3_ = SHA1.hash(_loc3_ + SECRET_DELIMETER + _loc4_.toString());
         }
         return _loc3_;
      }
      
      public static function getSecurityHashForLevelProfileSecure(param1:Object) : String
      {
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc7_:Array = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc10_:int = 0;
         var _loc2_:Array = [];
         _loc2_.push(param1.levelId);
         _loc2_.push(param1.score + "");
         _loc2_.push(param1.stars + "");
         _loc2_.push(SECURITY_KEY_PROFILE);
         var _loc3_:String = param1.gamePlay;
         var _loc4_:Array = _loc3_.split(":");
         for each(_loc5_ in _loc4_)
         {
            _loc2_.push(_loc5_);
         }
         _loc2_.push(param1.userId);
         _loc7_ = (_loc6_ = param1.blocks).split(",");
         for each(_loc5_ in _loc7_)
         {
            _loc2_.push(_loc5_);
         }
         _loc8_ = "";
         _loc9_ = "";
         _loc10_ = 0;
         while(_loc10_ < _loc2_.length)
         {
            _loc8_ += _loc2_[_loc10_];
            if(_loc10_ <= MAX_TOKENS)
            {
               _loc9_ = SHA1.hash(_loc8_ + _loc9_);
            }
            _loc10_++;
         }
         if(MAX_TOKENS < _loc2_.length)
         {
            _loc9_ = SHA1.hash(_loc8_ + _loc9_);
         }
         return _loc9_;
      }
      
      private static function getText(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
      
      public static function calculateTazosSecurityHash(param1:String, param2:int, param3:int, param4:String) : String
      {
         var _loc5_:String = SECURITY_KEY_PROFILE;
         var _loc6_:String = (_loc6_ = (_loc6_ = (_loc6_ = "") + _loc5_) + SECRET_DELIMETER) + param2;
         _loc5_ = SHA1.hash(_loc6_);
         _loc6_ = (_loc6_ = (_loc6_ += _loc5_) + SECRET_DELIMETER) + param3;
         _loc5_ = SHA1.hash(_loc6_);
         _loc6_ = (_loc6_ = (_loc6_ += _loc5_) + SECRET_DELIMETER) + param4;
         _loc5_ = SHA1.hash(_loc6_);
         _loc6_ = (_loc6_ += _loc5_) + param1;
         _loc5_ = SHA1.hash(_loc6_);
         return _loc6_.length > 0 ? _loc5_ : null;
      }
      
      public function get serverCallHasCompleted() : Boolean
      {
         return this.mServerCallHasCompleted;
      }
      
      private function onRequestTimeout(param1:TimerEvent) : void
      {
         this.dispose();
      }
      
      private function onComplete(param1:Event) : void
      {
         this.mResponseListener.onComplete(param1);
         this.mServerCallHasCompleted = true;
         this.removeEventListeners();
      }
      
      private function onHttpStatus(param1:HTTPStatusEvent) : void
      {
         this.mResponseListener.onHttpStatus(param1);
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         this.mResponseListener.onIOError(param1);
         this.removeEventListeners();
      }
      
      public function get UrlLoader() : URLLoader
      {
         return this.mUrlLoader;
      }
      
      private function removeEventListeners() : void
      {
         if(this.mUrlLoader)
         {
            this.mUrlLoader.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.onHttpStatus);
            this.mUrlLoader.removeEventListener(Event.COMPLETE,this.onComplete);
            this.mUrlLoader.removeEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
         }
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
         if(this.mUrlLoader)
         {
            this.mUrlLoader.close();
            this.mUrlLoader = null;
         }
         if(this.mResponseListener)
         {
            this.mResponseListener = null;
         }
      }
      
      private function createVariables(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
   }
}
