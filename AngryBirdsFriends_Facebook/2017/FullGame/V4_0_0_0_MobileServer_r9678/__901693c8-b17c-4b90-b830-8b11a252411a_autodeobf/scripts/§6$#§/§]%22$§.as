package §6$#§
{
   import §##-§.§=W§;
   import §##-§.SHA256;
   import §6!0§.§ "8§;
   import §<"p§.Base64;
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
   
   public class §]"$§ extends EventDispatcher
   {
      
      public static const §'!S§:String = "cloud";
      
      public static const §^"N§:String = "mist";
      
      public static const §6!>§:String = "smoke";
      
      private static const §1a§:Boolean = false;
      
      private static const §1"w§:String = "/identity/2.0/facebook/weblogin";
      
      private static const §8!r§:String = "/session/2/apps/";
      
      private static const §7";§:String = "application/x-www-form-urlencoded";
       
      
      protected var §"!k§:String;
      
      protected var §8"I§:String;
      
      protected var §<#q§:String;
      
      protected var §'#Z§:String;
      
      private var §+"§:URLLoader;
      
      private var §3V§:String;
      
      private var §!!d§:Number;
      
      private var §#!8§:String;
      
      private var §#>§:String;
      
      public function §]"$§(param1:String, param2:String, param3:String = "cloud", param4:String = null)
      {
         super();
         this.§"!k§ = param1;
         this.§8"I§ = param2;
         this.§<#q§ = param4 || this.§[#o§();
         this.§'#Z§ = param3;
      }
      
      public function get accessToken() : String
      {
         return this.§3V§;
      }
      
      public function get expiresIn() : Number
      {
         return this.§!!d§;
      }
      
      public function get refreshToken() : String
      {
         return this.§#!8§;
      }
      
      public function get scope() : String
      {
         return this.§#>§;
      }
      
      public function get §"$1§() : Boolean
      {
         return this.§+"§ != null;
      }
      
      protected function getRequestData() : URLVariables
      {
         var _loc1_:URLVariables = new URLVariables();
         _loc1_.clientId = this.§"!k§;
         _loc1_.persistentGuid = this.§8"I§;
         _loc1_.userAgent = this.§<#q§;
         _loc1_.distributionChannel = "facebook";
         return _loc1_;
      }
      
      protected function createJSONRequestData() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.provider = "facebook";
         _loc1_.clientId = this.§"!k§;
         _loc1_.distributionChannel = "facebook";
         return _loc1_;
      }
      
      public function §?u§() : void
      {
         if(this.§"$1§)
         {
            return;
         }
         var _loc1_:URLRequest = this.§7!?§();
         this.§+"§ = new URLLoader();
         this.§+"§.addEventListener(Event.COMPLETE,this.onLoadComplete);
         this.§+"§.addEventListener(IOErrorEvent.IO_ERROR,this.§2!-§);
         this.§+"§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§2!-§);
         this.§+"§.load(_loc1_);
      }
      
      protected function §7!?§() : URLRequest
      {
         var _loc1_:Base64Encoder = null;
         var _loc2_:Object = null;
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:URLRequest = null;
         var _loc9_:Object = null;
         var _loc10_:URLRequest = null;
         if(§1a§)
         {
            _loc1_ = new Base64Encoder();
            _loc2_ = this.createJSONRequestData();
            _loc3_ = Base64.encode(JSON.stringify(_loc2_));
            _loc4_ = new ByteArray();
            _loc5_ = §=W§.§0"x§(this.getClientSecret(),_loc3_,SHA256);
            _loc6_ = 0;
            while(_loc6_ < _loc5_.length)
            {
               _loc4_.writeByte(parseInt(_loc5_.charAt(_loc6_) + _loc5_.charAt(_loc6_ + 1),16));
               _loc6_ += 2;
            }
            _loc7_ = (_loc7_ = Base64.§2##§(_loc4_)).replace(/\+/g,"-").replace(/\//g,"_").replace(/\=+$/,"");
            _loc8_ = new URLRequest("https://" + this.§'#Z§ + ".rovio.com" + §8!r§ + this.§"!k§ + "/sessions/external");
            _loc9_ = {
               "body":_loc3_,
               "signature":_loc7_
            };
            _loc8_.data = JSON.stringify(_loc9_);
            _loc8_.method = URLRequestMethod.POST;
            _loc8_.contentType = "application/json";
            return _loc8_;
         }
         (_loc10_ = new URLRequest("https://" + this.§'#Z§ + ".rovio.com" + §1"w§)).data = this.getRequestData();
         _loc10_.method = URLRequestMethod.POST;
         _loc10_.contentType = §7";§;
         _loc10_.requestHeaders = [new URLRequestHeader("Content-Type",§7";§)];
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
            parsedObject = JSON.parse(this.§+"§.data);
            if(§1a§)
            {
               userAuth = parsedObject.userAuth;
            }
            else
            {
               userAuth = parsedObject;
            }
            this.§3V§ = userAuth.accessToken;
            this.§#!8§ = userAuth.refreshToken;
            this.§!!d§ = userAuth.expiresIn;
            this.§#>§ = userAuth.scope;
         }
         catch(e:Error)
         {
         }
         this.§+"§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      protected function §2!-§(param1:Event) : void
      {
         this.§+"§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §[#o§() : String
      {
         return § "8§.§ "§("window.navigator.userAgent.toString") || "no user agent";
      }
   }
}
