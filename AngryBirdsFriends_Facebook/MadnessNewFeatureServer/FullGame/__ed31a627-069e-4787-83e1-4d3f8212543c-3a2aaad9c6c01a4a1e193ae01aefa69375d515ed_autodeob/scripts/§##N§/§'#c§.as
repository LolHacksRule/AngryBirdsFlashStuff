package §##N§
{
   import §1#v§.Base64;
   import §;"H§.§9_§;
   import §;"H§.SHA256;
   import §]C§.§ !+§;
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
   
   public class §'#c§ extends EventDispatcher
   {
      
      public static const §[&§:String = "cloud";
      
      public static const §=s§:String = "mist";
      
      public static const §'#=§:String = "smoke";
      
      private static const §4#5§:Boolean = false;
      
      private static const §"b§:String = "/identity/2.0/facebook/weblogin";
      
      private static const §%#-§:String = "/session/2/apps/";
      
      private static const §=-§:String = "application/x-www-form-urlencoded";
       
      
      protected var §""^§:String;
      
      protected var §5#v§:String;
      
      protected var §?#M§:String;
      
      protected var §%!n§:String;
      
      private var §2!N§:URLLoader;
      
      private var §=0§:String;
      
      private var § #V§:Number;
      
      private var §5@§:String;
      
      private var §,"c§:String;
      
      public function §'#c§(param1:String, param2:String, param3:String = "cloud", param4:String = null)
      {
         super();
         this.§""^§ = param1;
         this.§5#v§ = param2;
         this.§?#M§ = param4 || this.§,$%§();
         this.§%!n§ = param3;
      }
      
      public function get accessToken() : String
      {
         return this.§=0§;
      }
      
      public function get expiresIn() : Number
      {
         return this.§ #V§;
      }
      
      public function get refreshToken() : String
      {
         return this.§5@§;
      }
      
      public function get scope() : String
      {
         return this.§,"c§;
      }
      
      public function get §6#J§() : Boolean
      {
         return this.§2!N§ != null;
      }
      
      protected function getRequestData() : URLVariables
      {
         var _loc1_:URLVariables = new URLVariables();
         _loc1_.clientId = this.§""^§;
         _loc1_.persistentGuid = this.§5#v§;
         _loc1_.userAgent = this.§?#M§;
         _loc1_.distributionChannel = "facebook";
         return _loc1_;
      }
      
      protected function createJSONRequestData() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.provider = "facebook";
         _loc1_.clientId = this.§""^§;
         _loc1_.distributionChannel = "facebook";
         return _loc1_;
      }
      
      public function §'!G§() : void
      {
         if(this.§6#J§)
         {
            return;
         }
         var _loc1_:URLRequest = this.§^$;§();
         this.§2!N§ = new URLLoader();
         this.§2!N§.addEventListener(Event.COMPLETE,this.onLoadComplete);
         this.§2!N§.addEventListener(IOErrorEvent.IO_ERROR,this.§&!Z§);
         this.§2!N§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§&!Z§);
         this.§2!N§.load(_loc1_);
      }
      
      protected function §^$;§() : URLRequest
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
         if(§4#5§)
         {
            _loc1_ = new Base64Encoder();
            _loc2_ = this.createJSONRequestData();
            _loc3_ = Base64.encode(JSON.stringify(_loc2_));
            _loc4_ = new ByteArray();
            _loc5_ = §9_§.§,"O§(this.getClientSecret(),_loc3_,SHA256);
            _loc6_ = 0;
            while(_loc6_ < _loc5_.length)
            {
               _loc4_.writeByte(parseInt(_loc5_.charAt(_loc6_) + _loc5_.charAt(_loc6_ + 1),16));
               _loc6_ += 2;
            }
            _loc7_ = (_loc7_ = Base64.§^!p§(_loc4_)).replace(/\+/g,"-").replace(/\//g,"_").replace(/\=+$/,"");
            _loc8_ = new URLRequest("https://" + this.§%!n§ + ".rovio.com" + §%#-§ + this.§""^§ + "/sessions/external");
            _loc9_ = {
               "body":_loc3_,
               "signature":_loc7_
            };
            _loc8_.data = JSON.stringify(_loc9_);
            _loc8_.method = URLRequestMethod.POST;
            _loc8_.contentType = "application/json";
            return _loc8_;
         }
         (_loc10_ = new URLRequest("https://" + this.§%!n§ + ".rovio.com" + §"b§)).data = this.getRequestData();
         _loc10_.method = URLRequestMethod.POST;
         _loc10_.contentType = §=-§;
         _loc10_.requestHeaders = [new URLRequestHeader("Content-Type",§=-§)];
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
            parsedObject = JSON.parse(this.§2!N§.data);
            if(§4#5§)
            {
               userAuth = parsedObject.userAuth;
            }
            else
            {
               userAuth = parsedObject;
            }
            this.§=0§ = userAuth.accessToken;
            this.§5@§ = userAuth.refreshToken;
            this.§ #V§ = userAuth.expiresIn;
            this.§,"c§ = userAuth.scope;
         }
         catch(e:Error)
         {
         }
         this.§2!N§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      protected function §&!Z§(param1:Event) : void
      {
         this.§2!N§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §,$%§() : String
      {
         return § !+§.§>$%§("window.navigator.userAgent.toString") || "no user agent";
      }
   }
}
