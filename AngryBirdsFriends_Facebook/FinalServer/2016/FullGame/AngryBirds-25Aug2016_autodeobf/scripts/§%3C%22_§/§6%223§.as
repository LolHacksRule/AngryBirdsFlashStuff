package §<"_§
{
   import §+"%§.§6X§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestHeader;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §6"3§ extends EventDispatcher
   {
      
      public static const §^!7§:String = "cloud";
      
      public static const §7#X§:String = "mist";
      
      public static const §^o§:String = "smoke";
      
      private static const §-#&§:String = "/identity/2.0/facebook/weblogin";
      
      private static const §`t§:String = "application/x-www-form-urlencoded";
       
      
      protected var §+#t§:String;
      
      protected var §2"I§:String;
      
      protected var §4"3§:String;
      
      protected var §;i§:String;
      
      private var § each§:URLLoader;
      
      private var §5m§:String;
      
      private var §]!2§:Number;
      
      private var §`#0§:String;
      
      private var §?"-§:String;
      
      public function §6"3§(param1:String, param2:String, param3:String = "cloud", param4:String = null)
      {
         super();
         this.§+#t§ = param1;
         this.§2"I§ = param2;
         this.§4"3§ = param4 || this.§3"d§();
         this.§;i§ = param3;
      }
      
      public function get accessToken() : String
      {
         return this.§5m§;
      }
      
      public function get expiresIn() : Number
      {
         return this.§]!2§;
      }
      
      public function get refreshToken() : String
      {
         return this.§`#0§;
      }
      
      public function get scope() : String
      {
         return this.§?"-§;
      }
      
      public function get §-#!§() : Boolean
      {
         return this.§ each§ != null;
      }
      
      protected function getRequestData() : URLVariables
      {
         var _loc1_:URLVariables = new URLVariables();
         _loc1_.clientId = this.§+#t§;
         _loc1_.persistentGuid = this.§2"I§;
         _loc1_.userAgent = this.§4"3§;
         return _loc1_;
      }
      
      public function §`#r§() : void
      {
         if(this.§-#!§)
         {
            return;
         }
         var _loc1_:URLRequest = new URLRequest("https://" + this.§;i§ + ".rovio.com" + §-#&§);
         _loc1_.data = this.getRequestData();
         _loc1_.method = URLRequestMethod.POST;
         _loc1_.contentType = §`t§;
         _loc1_.requestHeaders = [new URLRequestHeader("Content-Type",§`t§)];
         this.§ each§ = new URLLoader();
         this.§ each§.addEventListener(Event.COMPLETE,this.onLoadComplete);
         this.§ each§.addEventListener(IOErrorEvent.IO_ERROR,this.§2#q§);
         this.§ each§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§2#q§);
         this.§ each§.load(_loc1_);
      }
      
      protected function onLoadComplete(param1:Event) : void
      {
         var response:Object = null;
         var e:Event = param1;
         try
         {
            response = JSON.parse(this.§ each§.data);
            this.§5m§ = response.accessToken;
            this.§`#0§ = response.refreshToken;
            this.§]!2§ = response.expiresIn;
            this.§?"-§ = response.scope;
         }
         catch(e:Error)
         {
         }
         this.§ each§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      protected function §2#q§(param1:Event) : void
      {
         this.§ each§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §3"d§() : String
      {
         return §6X§.§3U§("window.navigator.userAgent.toString") || "no user agent";
      }
   }
}
