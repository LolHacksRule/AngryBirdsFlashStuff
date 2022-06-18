package §-"T§
{
   import §#"3§.Base64;
   import §,!M§.§<!b§;
   import §,!M§.SHA256;
   import §]!4§.§=#c§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestHeader;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import flash.utils.ByteArray;
   import mx.utils.Base64Encoder;
   
   public class §7#f§ extends EventDispatcher
   {
      
      public static const §=#J§:String = "cloud";
      
      public static const §4!P§:String = "mist";
      
      public static const §"$;§:String = "smoke";
      
      private static const §&!a§:Boolean = false;
      
      private static const §%#3§:String = "/identity/2.0/facebook/weblogin";
      
      private static const §&"6§:String = "/session/2/apps/";
      
      private static const §#$5§:String = "application/x-www-form-urlencoded";
       
      
      protected var §&!f§:String;
      
      protected var §<$3§:String;
      
      protected var §`"<§:String;
      
      protected var §7k§:String;
      
      private var §<#G§:URLLoader;
      
      private var §=$<§:String;
      
      private var §;#2§:Number;
      
      private var §-$2§:String;
      
      private var §8k§:String;
      
      public function §7#f§(param1:String, param2:String, param3:String = "cloud", param4:String = null)
      {
         super();
         this.§&!f§ = param1;
         this.§<$3§ = param2;
         this.§`"<§ = param4 || this.§++§();
         this.§7k§ = param3;
      }
      
      public function get accessToken() : String
      {
         return this.§=$<§;
      }
      
      public function get expiresIn() : Number
      {
         return this.§;#2§;
      }
      
      public function get refreshToken() : String
      {
         return this.§-$2§;
      }
      
      public function get scope() : String
      {
         return this.§8k§;
      }
      
      public function get §#!?§() : Boolean
      {
         return this.§<#G§ != null;
      }
      
      protected function getRequestData() : URLVariables
      {
         var _loc1_:URLVariables = new URLVariables();
         _loc1_.clientId = this.§&!f§;
         _loc1_.persistentGuid = this.§<$3§;
         _loc1_.userAgent = this.§`"<§;
         _loc1_.distributionChannel = "facebook";
         return _loc1_;
      }
      
      protected function createJSONRequestData() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.provider = "facebook";
         _loc1_.clientId = this.§&!f§;
         _loc1_.distributionChannel = "facebook";
         return _loc1_;
      }
      
      public function §0$@§() : void
      {
         if(this.§#!?§)
         {
            return;
         }
         var _loc1_:URLRequest = this.§ !&§();
         this.§<#G§ = new URLLoader();
         this.§<#G§.addEventListener(Event.COMPLETE,this.onLoadComplete);
         this.§<#G§.addEventListener(IOErrorEvent.IO_ERROR,this.§##6§);
         this.§<#G§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§##6§);
         this.§<#G§.load(_loc1_);
      }
      
      protected function § !&§() : URLRequest
      {
         var _loc2_:Object = null;
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:URLRequest = null;
         var _loc9_:Object = null;
         var _loc10_:URLRequest = null;
         if(§&!a§)
         {
            new Base64Encoder();
            _loc2_ = this.createJSONRequestData();
            _loc3_ = Base64.encode(JSON.stringify(_loc2_));
            _loc4_ = new ByteArray();
            _loc5_ = §<!b§.§0c§(this.getClientSecret(),_loc3_,SHA256);
            _loc6_ = 0;
            while(_loc6_ < _loc5_.length)
            {
               _loc4_.writeByte(parseInt(_loc5_.charAt(_loc6_) + _loc5_.charAt(_loc6_ + 1),16));
               _loc6_ += 2;
            }
            _loc7_ = (_loc7_ = Base64.§5+§(_loc4_)).replace(/\+/g,"-").replace(/\//g,"_").replace(/\=+$/,"");
            _loc8_ = new URLRequest("https://" + this.§7k§ + ".rovio.com" + §&"6§ + this.§&!f§ + "/sessions/external");
            _loc9_ = {
               "body":_loc3_,
               "signature":_loc7_
            };
            _loc8_.data = JSON.stringify(_loc9_);
            _loc8_.method = URLRequestMethod.POST;
            _loc8_.contentType = "application/json";
            return _loc8_;
         }
         (_loc10_ = new URLRequest("https://" + this.§7k§ + ".rovio.com" + §%#3§)).data = this.getRequestData();
         _loc10_.method = URLRequestMethod.POST;
         _loc10_.contentType = §#$5§;
         _loc10_.requestHeaders = [new URLRequestHeader("Content-Type",§#$5§)];
         return _loc10_;
      }
      
      protected function getClientSecret() : String
      {
         return "";
      }
      
      protected function onLoadComplete(param1:Event) : void
      {
         var parsedObject:Object = null;
         var userAuth:Object = null;
         var e:Event = param1;
         try
         {
            parsedObject = JSON.parse(this.§<#G§.data);
            if(§&!a§)
            {
               userAuth = parsedObject.userAuth;
            }
            else
            {
               userAuth = parsedObject;
            }
            this.§=$<§ = userAuth.accessToken;
            this.§-$2§ = userAuth.refreshToken;
            this.§;#2§ = userAuth.expiresIn;
            this.§8k§ = userAuth.scope;
         }
         catch(e:Error)
         {
         }
         this.§<#G§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      protected function §##6§(param1:Event) : void
      {
         this.§<#G§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §++§() : String
      {
         return §=#c§.§<!t§("window.navigator.userAgent.toString") || "no user agent";
      }
   }
}
