package §0R§
{
   import § 0§.§@Y§;
   import §,!_§.§"!c§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §!!M§ extends EventDispatcher
   {
      
      protected static const §3S§:String = "https://graph.facebook.com/";
      
      protected static var §?!N§:String;
       
      
      private var §`!E§:§"!c§;
      
      private var §?"z§:String;
      
      private var §-"4§:Object;
      
      private var §+]§:Object;
      
      private var §<!]§:Boolean = false;
      
      public function §!!M§(param1:String, param2:Object = null)
      {
         super();
         if(!§?!N§)
         {
            throw new Error("Static access token has not been set yet.");
         }
         this.§?"z§ = param1;
         this.§-"4§ = param2;
      }
      
      public static function set accessToken(param1:String) : void
      {
         §?!N§ = param1;
      }
      
      public function load() : void
      {
         var _loc3_:* = null;
         if(this.§`!E§)
         {
            throw new Error("Loading operation is already in progress.");
         }
         this.§+]§ = null;
         var _loc1_:URLRequest = new URLRequest(§3S§ + this.§?"z§);
         _loc1_.method = URLRequestMethod.GET;
         var _loc2_:URLVariables = new URLVariables();
         _loc2_.access_token = §?!N§;
         if(this.§-"4§)
         {
            for(_loc3_ in this.§-"4§)
            {
               _loc2_[_loc3_] = this.§-"4§[_loc3_];
            }
         }
         _loc1_.data = _loc2_;
         this.§`!E§ = new §"!c§();
         this.§`!E§.addEventListener(Event.COMPLETE,this.§9"l§);
         this.§`!E§.addEventListener(IOErrorEvent.IO_ERROR,this.§ !&§);
         this.§`!E§.load(_loc1_);
      }
      
      private function § !&§(param1:IOErrorEvent) : void
      {
         if(!this.§<!]§)
         {
            this.§<!]§ = true;
            §@Y§.addCallback("accessTokenRenewed",this.§+"M§);
            §@Y§.§7"H§("renewAccessToken");
         }
         else
         {
            §@Y§.§7"H§("requestAuthorization");
         }
      }
      
      protected function §9"l§(param1:Event) : void
      {
         var response:Object = null;
         var e:Event = param1;
         try
         {
            response = JSON.parse(this.§`!E§.data);
         }
         catch(e:Error)
         {
            throw new Error("Invalid JSON from " + §3S§ + §?"z§ + ":\n" + §`!E§.data);
         }
         this.§<!]§ = false;
         this.§+]§ = response;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public function get §?"u§() : Object
      {
         return this.§+]§;
      }
      
      protected function §+"M§(param1:String) : void
      {
         accessToken = param1;
         §@Y§.§0"<§("accessTokenRenewed",this.§+"M§);
         this.§`!E§ = null;
         this.load();
      }
      
      public function §,";§() : void
      {
         if(this.§`!E§)
         {
            try
            {
               this.§`!E§.close();
            }
            catch(e:Error)
            {
            }
            this.§`!E§ = null;
         }
         this.§<!]§ = false;
      }
   }
}
