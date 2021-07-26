package §,!_§
{
   import §#$?§.§7!b§;
   import §5#D§.§-!b§;
   import §5#D§.SHA256;
   import §6"p§.Base64;
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
   
   public class §=!g§ extends EventDispatcher
   {
      
      public static const §1@§:String = "cloud";
      
      public static const §#!W§:String = "mist";
      
      public static const §="s§:String = "smoke";
      
      private static const §[#7§:Boolean = false;
      
      private static const §]"+§:String = "/identity/2.0/facebook/weblogin";
      
      private static const §@6§:String = "/session/2/apps/";
      
      private static const §="h§:String = "application/x-www-form-urlencoded";
       
      
      protected var §`#k§:String;
      
      protected var §7"C§:String;
      
      protected var §`"V§:String;
      
      protected var §<$&§:String;
      
      private var §@$2§:URLLoader;
      
      private var §'!d§:String;
      
      private var §'$!§:Number;
      
      private var §@!b§:String;
      
      private var §6N§:String;
      
      public function §=!g§(param1:String, param2:String, param3:String = "cloud", param4:String = null)
      {
         super();
         this.§`#k§ = param1;
         this.§7"C§ = param2;
         this.§`"V§ = param4 || this.§>"M§();
         this.§<$&§ = param3;
      }
      
      public function get accessToken() : String
      {
         return this.§'!d§;
      }
      
      public function get expiresIn() : Number
      {
         return this.§'$!§;
      }
      
      public function get refreshToken() : String
      {
         return this.§@!b§;
      }
      
      public function get scope() : String
      {
         return this.§6N§;
      }
      
      public function get §9$$§() : Boolean
      {
         return this.§@$2§ != null;
      }
      
      protected function getRequestData() : URLVariables
      {
         var _loc1_:URLVariables = new URLVariables();
         _loc1_.clientId = this.§`#k§;
         _loc1_.persistentGuid = this.§7"C§;
         _loc1_.userAgent = this.§`"V§;
         _loc1_.distributionChannel = "facebook";
         return _loc1_;
      }
      
      protected function createJSONRequestData() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.provider = "facebook";
         _loc1_.clientId = this.§`#k§;
         _loc1_.distributionChannel = "facebook";
         return _loc1_;
      }
      
      public function §'!5§() : void
      {
         if(this.§9$$§)
         {
            return;
         }
         var _loc1_:URLRequest = this.§ $9§();
         this.§@$2§ = new URLLoader();
         this.§@$2§.addEventListener(Event.COMPLETE,this.onLoadComplete);
         this.§@$2§.addEventListener(IOErrorEvent.IO_ERROR,this.§4"d§);
         this.§@$2§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§4"d§);
         this.§@$2§.load(_loc1_);
      }
      
      protected function § $9§() : URLRequest
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
         if(§[#7§)
         {
            _loc1_ = new Base64Encoder();
            _loc2_ = this.createJSONRequestData();
            _loc3_ = Base64.encode(JSON.stringify(_loc2_));
            _loc4_ = new ByteArray();
            _loc5_ = §-!b§.§!"a§(this.getClientSecret(),_loc3_,SHA256);
            _loc6_ = 0;
            while(_loc6_ < _loc5_.length)
            {
               _loc4_.writeByte(parseInt(_loc5_.charAt(_loc6_) + _loc5_.charAt(_loc6_ + 1),16));
               _loc6_ += 2;
            }
            _loc7_ = (_loc7_ = Base64.§8!q§(_loc4_)).replace(/\+/g,"-").replace(/\//g,"_").replace(/\=+$/,"");
            _loc8_ = new URLRequest("https://" + this.§<$&§ + ".rovio.com" + §@6§ + this.§`#k§ + "/sessions/external");
            _loc9_ = {
               "body":_loc3_,
               "signature":_loc7_
            };
            _loc8_.data = JSON.stringify(_loc9_);
            _loc8_.method = URLRequestMethod.POST;
            _loc8_.contentType = "application/json";
            return _loc8_;
         }
         (_loc10_ = new URLRequest("https://" + this.§<$&§ + ".rovio.com" + §]"+§)).data = this.getRequestData();
         _loc10_.method = URLRequestMethod.POST;
         _loc10_.contentType = §="h§;
         _loc10_.requestHeaders = [new URLRequestHeader("Content-Type",§="h§)];
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
            parsedObject = JSON.parse(this.§@$2§.data);
            if(§[#7§)
            {
               userAuth = parsedObject.userAuth;
            }
            else
            {
               userAuth = parsedObject;
            }
            this.§'!d§ = userAuth.accessToken;
            this.§@!b§ = userAuth.refreshToken;
            this.§'$!§ = userAuth.expiresIn;
            this.§6N§ = userAuth.scope;
         }
         catch(e:Error)
         {
         }
         this.§@$2§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      protected function §4"d§(param1:Event) : void
      {
         this.§@$2§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §>"M§() : String
      {
         return §7!b§.§7@§("window.navigator.userAgent.toString") || "no user agent";
      }
   }
}
