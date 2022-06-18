package §6V§
{
   import § $%§.§0#`§;
   import §6!0§.§ "8§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §9#r§ extends EventDispatcher
   {
      
      protected static const §8"4§:String = "https://graph.facebook.com/";
      
      protected static var §&X§:String;
       
      
      private var §+"§:§0#`§;
      
      protected var §=b§:String;
      
      private var §+n§:Object;
      
      private var §6#S§:Object;
      
      private var § #&§:Boolean = false;
      
      public function §9#r§(param1:String, param2:Object = null)
      {
         super();
         if(!§&X§)
         {
            throw new Error("Static access token has not been set yet.");
         }
         this.§=b§ = param1;
         this.§+n§ = param2;
      }
      
      public static function set accessToken(param1:String) : void
      {
         §&X§ = param1;
      }
      
      public function load() : void
      {
         var _loc3_:* = null;
         if(this.§+"§)
         {
            throw new Error("Loading operation is already in progress.");
         }
         this.§6#S§ = null;
         var _loc1_:URLRequest = new URLRequest(this.getGraphURL());
         _loc1_.method = URLRequestMethod.GET;
         var _loc2_:URLVariables = new URLVariables();
         _loc2_.access_token = §&X§;
         if(this.§+n§)
         {
            for(_loc3_ in this.§+n§)
            {
               _loc2_[_loc3_] = this.§+n§[_loc3_];
            }
         }
         _loc1_.data = _loc2_;
         this.§+"§ = new §0#`§();
         this.§+"§.addEventListener(Event.COMPLETE,this.§?"i§);
         this.§+"§.addEventListener(IOErrorEvent.IO_ERROR,this.§]!i§);
         this.§+"§.load(_loc1_);
      }
      
      private function §]!i§(param1:IOErrorEvent) : void
      {
         if(!this.§ #&§)
         {
            this.§ #&§ = true;
            § "8§.addCallback("accessTokenRenewed",this.§#"F§);
            § "8§.§ "§("renewAccessToken");
         }
         else
         {
            § "8§.§ "§("requestAuthorization");
         }
      }
      
      protected function §?"i§(param1:Event) : void
      {
         var response:Object = null;
         var e:Event = param1;
         try
         {
            response = JSON.parse(this.§+"§.data);
         }
         catch(e:Error)
         {
            throw new Error("Invalid JSON from " + getGraphURL() + ":\n" + §+"§.data);
         }
         this.§ #&§ = false;
         this.§6#S§ = response;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public function get §'#m§() : Object
      {
         return this.§6#S§;
      }
      
      protected function §#"F§(param1:String) : void
      {
         accessToken = param1;
         § "8§.§+#R§("accessTokenRenewed",this.§#"F§);
         this.§+"§ = null;
         this.load();
      }
      
      public function cancel() : void
      {
         if(this.§+"§)
         {
            try
            {
               this.§+"§.close();
            }
            catch(e:Error)
            {
            }
            this.§+"§ = null;
         }
         this.§ #&§ = false;
      }
      
      protected function getGraphURL() : String
      {
         return §8"4§ + this.§=b§;
      }
   }
}
