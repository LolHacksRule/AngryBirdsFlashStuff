package §9@§
{
   import §2<§.§3d§;
   import §30§.§'"+§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §+"[§ extends EventDispatcher
   {
      
      protected static const §5!6§:String = "https://graph.facebook.com/";
      
      protected static var §1"I§:String;
       
      
      private var §2!H§:§3d§;
      
      private var §]f§:String;
      
      private var §#!+§:Object;
      
      private var §;"3§:Object;
      
      private var §+"2§:Boolean = false;
      
      public function §+"[§(param1:String, param2:Object = null)
      {
         super();
         if(!§1"I§)
         {
            throw new Error("Static access token has not been set yet.");
         }
         this.§]f§ = param1;
         this.§#!+§ = param2;
      }
      
      public static function set accessToken(param1:String) : void
      {
         §1"I§ = param1;
      }
      
      public function load() : void
      {
         var _loc3_:* = null;
         if(this.§2!H§)
         {
            throw new Error("Loading operation is already in progress.");
         }
         this.§;"3§ = null;
         var _loc1_:URLRequest = new URLRequest(§5!6§ + this.§]f§);
         _loc1_.method = URLRequestMethod.GET;
         var _loc2_:URLVariables = new URLVariables();
         _loc2_.access_token = §1"I§;
         if(this.§#!+§)
         {
            for(_loc3_ in this.§#!+§)
            {
               _loc2_[_loc3_] = this.§#!+§[_loc3_];
            }
         }
         _loc1_.data = _loc2_;
         this.§2!H§ = new §3d§();
         this.§2!H§.addEventListener(Event.COMPLETE,this.§9!y§);
         this.§2!H§.addEventListener(IOErrorEvent.IO_ERROR,this.§-!R§);
         this.§2!H§.load(_loc1_);
      }
      
      private function §-!R§(param1:IOErrorEvent) : void
      {
         if(!this.§+"2§)
         {
            this.§+"2§ = true;
            §'"+§.addCallback("accessTokenRenewed",this.§?i§);
            §'"+§.§'!#§("renewAccessToken");
         }
         else
         {
            §'"+§.§'!#§("requestAuthorization");
         }
      }
      
      protected function §9!y§(param1:Event) : void
      {
         var response:Object = null;
         var e:Event = param1;
         try
         {
            response = JSON.parse(this.§2!H§.data);
         }
         catch(e:Error)
         {
            throw new Error("Invalid JSON from " + §5!6§ + §]f§ + ":\n" + §2!H§.data);
         }
         this.§+"2§ = false;
         this.§;"3§ = response;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public function get §8§() : Object
      {
         return this.§;"3§;
      }
      
      protected function §?i§(param1:String) : void
      {
         accessToken = param1;
         §'"+§.§"!6§("accessTokenRenewed",this.§?i§);
         this.§2!H§ = null;
         this.load();
      }
      
      public function §=!z§() : void
      {
         if(this.§2!H§)
         {
            try
            {
               this.§2!H§.close();
            }
            catch(e:Error)
            {
            }
            this.§2!H§ = null;
         }
         this.§+"2§ = false;
      }
   }
}
