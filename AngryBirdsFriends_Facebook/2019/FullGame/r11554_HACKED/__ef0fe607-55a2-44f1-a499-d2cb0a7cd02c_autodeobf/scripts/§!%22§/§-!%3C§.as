package §!"§
{
   import §7#j§.§@"F§;
   import §9#K§.Base64;
   import §]#+§.§3[§;
   import §]#+§.SHA256;
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
   
   public class §-!<§ extends EventDispatcher
   {
      
      public static const §^R§:String = "cloud";
      
      public static const § #e§:String = "mist";
      
      public static const §3$-§:String = "smoke";
      
      private static const §5!;§:Boolean = false;
      
      private static const §@"a§:String = "/identity/2.0/facebook/weblogin";
      
      private static const §=l§:String = "/session/2/apps/";
      
      private static const §-$4§:String = "application/x-www-form-urlencoded";
       
      
      protected var §+$7§:String;
      
      protected var §,x§:String;
      
      protected var §'#d§:String;
      
      protected var §`Q§:String;
      
      private var §&![§:URLLoader;
      
      private var §3!!§:String;
      
      private var §^#A§:Number;
      
      private var §&#n§:String;
      
      private var §]$6§:String;
      
      public function §-!<§(param1:String, param2:String, param3:String = "cloud", param4:String = null)
      {
         super();
         this.§+$7§ = param1;
         this.§,x§ = param2;
         this.§'#d§ = param4 || this.§>#H§();
         this.§`Q§ = param3;
      }
      
      public function get accessToken() : String
      {
         return this.§3!!§;
      }
      
      public function get expiresIn() : Number
      {
         return this.§^#A§;
      }
      
      public function get refreshToken() : String
      {
         return this.§&#n§;
      }
      
      public function get scope() : String
      {
         return this.§]$6§;
      }
      
      public function get §0"§() : Boolean
      {
         return this.§&![§ != null;
      }
      
      protected function getRequestData() : URLVariables
      {
         var _loc1_:URLVariables = new URLVariables();
         _loc1_.clientId = this.§+$7§;
         _loc1_.persistentGuid = this.§,x§;
         _loc1_.userAgent = this.§'#d§;
         _loc1_.distributionChannel = "facebook";
         return _loc1_;
      }
      
      protected function createJSONRequestData() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.provider = "facebook";
         _loc1_.clientId = this.§+$7§;
         _loc1_.distributionChannel = "facebook";
         return _loc1_;
      }
      
      public function §66§() : void
      {
         if(this.§0"§)
         {
            return;
         }
         var _loc1_:URLRequest = this.§##M§();
         this.§&![§ = new URLLoader();
         this.§&![§.addEventListener(Event.COMPLETE,this.onLoadComplete);
         this.§&![§.addEventListener(IOErrorEvent.IO_ERROR,this.§;#w§);
         this.§&![§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§;#w§);
         this.§&![§.load(_loc1_);
      }
      
      protected function §##M§() : URLRequest
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
         if(§5!;§)
         {
            new Base64Encoder();
            _loc2_ = this.createJSONRequestData();
            _loc3_ = Base64.encode(JSON.stringify(_loc2_));
            _loc4_ = new ByteArray();
            _loc5_ = §3[§.§-$8§(this.getClientSecret(),_loc3_,SHA256);
            _loc6_ = 0;
            while(_loc6_ < _loc5_.length)
            {
               _loc4_.writeByte(parseInt(_loc5_.charAt(_loc6_) + _loc5_.charAt(_loc6_ + 1),16));
               _loc6_ += 2;
            }
            _loc7_ = (_loc7_ = Base64.§1#R§(_loc4_)).replace(/\+/g,"-").replace(/\//g,"_").replace(/\=+$/,"");
            _loc8_ = new URLRequest("https://" + this.§`Q§ + ".rovio.com" + §=l§ + this.§+$7§ + "/sessions/external");
            _loc9_ = {
               "body":_loc3_,
               "signature":_loc7_
            };
            _loc8_.data = JSON.stringify(_loc9_);
            _loc8_.method = URLRequestMethod.POST;
            _loc8_.contentType = "application/json";
            return _loc8_;
         }
         (_loc10_ = new URLRequest("https://" + this.§`Q§ + ".rovio.com" + §@"a§)).data = this.getRequestData();
         _loc10_.method = URLRequestMethod.POST;
         _loc10_.contentType = §-$4§;
         _loc10_.requestHeaders = [new URLRequestHeader("Content-Type",§-$4§)];
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
            parsedObject = JSON.parse(this.§&![§.data);
            if(§5!;§)
            {
               userAuth = parsedObject.userAuth;
            }
            else
            {
               userAuth = parsedObject;
            }
            this.§3!!§ = userAuth.accessToken;
            this.§&#n§ = userAuth.refreshToken;
            this.§^#A§ = userAuth.expiresIn;
            this.§]$6§ = userAuth.scope;
         }
         catch(e:Error)
         {
         }
         this.§&![§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      protected function §;#w§(param1:Event) : void
      {
         this.§&![§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §>#H§() : String
      {
         return §@"F§.§^$#§("window.navigator.userAgent.toString") || "no user agent";
      }
   }
}
