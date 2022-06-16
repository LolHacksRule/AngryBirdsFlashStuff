package §-#F§
{
   import §%!x§.§^!K§;
   import §+!W§.§2"8§;
   import §+!W§.SHA256;
   import §]!6§.Base64;
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
   
   public class §@!5§ extends EventDispatcher
   {
      
      public static const §1"Y§:String = "cloud";
      
      public static const §5!E§:String = "mist";
      
      public static const §<"4§:String = "smoke";
      
      private static const §7"C§:Boolean = false;
      
      private static const § !R§:String = "/identity/2.0/facebook/weblogin";
      
      private static const §@!P§:String = "/session/2/apps/";
      
      private static const §,!4§:String = "application/x-www-form-urlencoded";
       
      
      protected var §!"6§:String;
      
      protected var §1!j§:String;
      
      protected var §>!,§:String;
      
      protected var §&#j§:String;
      
      private var §>v§:URLLoader;
      
      private var §!#s§:String;
      
      private var §+!O§:Number;
      
      private var §^!I§:String;
      
      private var §^S§:String;
      
      public function §@!5§(param1:String, param2:String, param3:String = "cloud", param4:String = null)
      {
         super();
         this.§!"6§ = param1;
         this.§1!j§ = param2;
         this.§>!,§ = param4 || this.§`!]§();
         this.§&#j§ = param3;
      }
      
      public function get accessToken() : String
      {
         return this.§!#s§;
      }
      
      public function get expiresIn() : Number
      {
         return this.§+!O§;
      }
      
      public function get refreshToken() : String
      {
         return this.§^!I§;
      }
      
      public function get scope() : String
      {
         return this.§^S§;
      }
      
      public function get §8R§() : Boolean
      {
         return this.§>v§ != null;
      }
      
      protected function getRequestData() : URLVariables
      {
         var _loc1_:URLVariables = new URLVariables();
         _loc1_.clientId = this.§!"6§;
         _loc1_.persistentGuid = this.§1!j§;
         _loc1_.userAgent = this.§>!,§;
         _loc1_.distributionChannel = "facebook";
         return _loc1_;
      }
      
      protected function createJSONRequestData() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.provider = "facebook";
         _loc1_.clientId = this.§!"6§;
         _loc1_.distributionChannel = "facebook";
         return _loc1_;
      }
      
      public function §=E§() : void
      {
         if(this.§8R§)
         {
            return;
         }
         var _loc1_:URLRequest = this.§##Z§();
         this.§>v§ = new URLLoader();
         this.§>v§.addEventListener(Event.COMPLETE,this.onLoadComplete);
         this.§>v§.addEventListener(IOErrorEvent.IO_ERROR,this.§""k§);
         this.§>v§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§""k§);
         this.§>v§.load(_loc1_);
      }
      
      protected function §##Z§() : URLRequest
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
         if(§7"C§)
         {
            _loc1_ = new Base64Encoder();
            _loc2_ = this.createJSONRequestData();
            _loc3_ = Base64.encode(JSON.stringify(_loc2_));
            _loc4_ = new ByteArray();
            _loc5_ = §2"8§.§%$6§(this.getClientSecret(),_loc3_,SHA256);
            _loc6_ = 0;
            while(_loc6_ < _loc5_.length)
            {
               _loc4_.writeByte(parseInt(_loc5_.charAt(_loc6_) + _loc5_.charAt(_loc6_ + 1),16));
               _loc6_ += 2;
            }
            _loc7_ = (_loc7_ = Base64.§%#n§(_loc4_)).replace(/\+/g,"-").replace(/\//g,"_").replace(/\=+$/,"");
            _loc8_ = new URLRequest("https://" + this.§&#j§ + ".rovio.com" + §@!P§ + this.§!"6§ + "/sessions/external");
            _loc9_ = {
               "body":_loc3_,
               "signature":_loc7_
            };
            _loc8_.data = JSON.stringify(_loc9_);
            _loc8_.method = URLRequestMethod.POST;
            _loc8_.contentType = "application/json";
            return _loc8_;
         }
         (_loc10_ = new URLRequest("https://" + this.§&#j§ + ".rovio.com" + § !R§)).data = this.getRequestData();
         _loc10_.method = URLRequestMethod.POST;
         _loc10_.contentType = §,!4§;
         _loc10_.requestHeaders = [new URLRequestHeader("Content-Type",§,!4§)];
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
            parsedObject = JSON.parse(this.§>v§.data);
            if(§7"C§)
            {
               userAuth = parsedObject.userAuth;
            }
            else
            {
               userAuth = parsedObject;
            }
            this.§!#s§ = userAuth.accessToken;
            this.§^!I§ = userAuth.refreshToken;
            this.§+!O§ = userAuth.expiresIn;
            this.§^S§ = userAuth.scope;
         }
         catch(e:Error)
         {
         }
         this.§>v§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      protected function §""k§(param1:Event) : void
      {
         this.§>v§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §`!]§() : String
      {
         return §^!K§.§+"D§("window.navigator.userAgent.toString") || "no user agent";
      }
   }
}
