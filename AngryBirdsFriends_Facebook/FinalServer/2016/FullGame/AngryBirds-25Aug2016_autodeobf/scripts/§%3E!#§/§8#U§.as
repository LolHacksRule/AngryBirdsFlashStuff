package §>!#§
{
   import §+"%§.§6X§;
   import §]$9§.§5$5§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §8#U§ extends EventDispatcher
   {
      
      protected static const §3" §:String = "https://graph.facebook.com/";
      
      protected static var §9z§:String;
       
      
      private var § each§:§5$5§;
      
      protected var §-6§:String;
      
      private var §'r§:Object;
      
      private var §,#4§:Object;
      
      private var §5"e§:Boolean = false;
      
      public function §8#U§(param1:String, param2:Object = null)
      {
         super();
         if(!§9z§)
         {
            throw new Error("Static access token has not been set yet.");
         }
         this.§-6§ = param1;
         this.§'r§ = param2;
      }
      
      public static function set accessToken(param1:String) : void
      {
         §9z§ = param1;
      }
      
      public function load() : void
      {
         var _loc3_:* = null;
         if(this.§ each§)
         {
            throw new Error("Loading operation is already in progress.");
         }
         this.§,#4§ = null;
         var _loc1_:URLRequest = new URLRequest(this.getGraphURL());
         _loc1_.method = URLRequestMethod.GET;
         var _loc2_:URLVariables = new URLVariables();
         _loc2_.access_token = §9z§;
         if(this.§'r§)
         {
            for(_loc3_ in this.§'r§)
            {
               _loc2_[_loc3_] = this.§'r§[_loc3_];
            }
         }
         _loc1_.data = _loc2_;
         this.§ each§ = new §5$5§();
         this.§ each§.addEventListener(Event.COMPLETE,this.§9#L§);
         this.§ each§.addEventListener(IOErrorEvent.IO_ERROR,this.§3@§);
         this.§ each§.load(_loc1_);
      }
      
      private function §3@§(param1:IOErrorEvent) : void
      {
         if(!this.§5"e§)
         {
            this.§5"e§ = true;
            §6X§.addCallback("accessTokenRenewed",this.§;"]§);
            §6X§.§3U§("renewAccessToken");
         }
         else
         {
            §6X§.§3U§("requestAuthorization");
         }
      }
      
      protected function §9#L§(param1:Event) : void
      {
         var response:Object = null;
         var e:Event = param1;
         try
         {
            response = JSON.parse(this.§ each§.data);
            this.§5"e§ = false;
            this.§,#4§ = response;
            dispatchEvent(new Event(Event.COMPLETE));
            return;
         }
         catch(e:Error)
         {
            throw new Error("Invalid JSON from " + getGraphURL() + ":\n" + § each§.data);
         }
      }
      
      public function get §%"H§() : Object
      {
         return this.§,#4§;
      }
      
      protected function §;"]§(param1:String) : void
      {
         accessToken = param1;
         §6X§.§5!3§("accessTokenRenewed",this.§;"]§);
         this.§ each§ = null;
         this.load();
      }
      
      public function cancel() : void
      {
         if(this.§ each§)
         {
            try
            {
               this.§ each§.close();
            }
            catch(e:Error)
            {
            }
            this.§ each§ = null;
         }
         this.§5"e§ = false;
      }
      
      protected function getGraphURL() : String
      {
         return §3" § + this.§-6§;
      }
   }
}
