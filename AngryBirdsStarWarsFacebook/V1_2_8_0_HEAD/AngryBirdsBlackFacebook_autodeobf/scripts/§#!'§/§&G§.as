package §#!'§
{
   import §="V§.§""v§;
   import §`!o§.§2,§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §&G§ extends EventDispatcher
   {
      
      protected static const §!"Q§:String = "https://graph.facebook.com/";
      
      protected static var §6"r§:String;
       
      
      private var §9v§:§2,§;
      
      private var §`#W§:String;
      
      private var §;!Z§:Object;
      
      private var §4!F§:Object;
      
      private var §]#K§:Boolean = false;
      
      public function §&G§(param1:String, param2:Object = null)
      {
         super();
         if(!§6"r§)
         {
            throw new Error("Static access token has not been set yet.");
         }
         this.§`#W§ = param1;
         this.§;!Z§ = param2;
      }
      
      public static function set accessToken(param1:String) : void
      {
         §6"r§ = param1;
      }
      
      public function load() : void
      {
         var _loc3_:* = null;
         if(this.§9v§)
         {
            throw new Error("Loading operation is already in progress.");
         }
         this.§4!F§ = null;
         var _loc1_:URLRequest = new URLRequest(§!"Q§ + this.§`#W§);
         _loc1_.method = URLRequestMethod.GET;
         var _loc2_:URLVariables = new URLVariables();
         _loc2_.access_token = §6"r§;
         if(this.§;!Z§)
         {
            for(_loc3_ in this.§;!Z§)
            {
               _loc2_[_loc3_] = this.§;!Z§[_loc3_];
            }
         }
         _loc1_.data = _loc2_;
         this.§9v§ = new §2,§();
         this.§9v§.addEventListener(Event.COMPLETE,this.§0"L§);
         this.§9v§.addEventListener(IOErrorEvent.IO_ERROR,this.§,#Y§);
         this.§9v§.load(_loc1_);
      }
      
      private function §,#Y§(param1:IOErrorEvent) : void
      {
         if(!this.§]#K§)
         {
            this.§]#K§ = true;
            §""v§.addCallback("accessTokenRenewed",this.§ j§);
            §""v§.§&R§("renewAccessToken");
         }
         else
         {
            §""v§.§&R§("requestAuthorization");
         }
      }
      
      protected function §0"L§(param1:Event) : void
      {
         var response:Object = null;
         var e:Event = param1;
         try
         {
            response = JSON.parse(this.§9v§.data);
         }
         catch(e:Error)
         {
            throw new Error("Invalid JSON from " + §!"Q§ + §`#W§ + ":\n" + §9v§.data);
         }
         this.§]#K§ = false;
         this.§4!F§ = response;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public function get §3!U§() : Object
      {
         return this.§4!F§;
      }
      
      protected function § j§(param1:String) : void
      {
         accessToken = param1;
         §""v§.§&z§("accessTokenRenewed",this.§ j§);
         this.§9v§ = null;
         this.load();
      }
      
      public function §1!d§() : void
      {
         if(this.§9v§)
         {
            try
            {
               this.§9v§.close();
            }
            catch(e:Error)
            {
            }
            this.§9v§ = null;
         }
         this.§]#K§ = false;
      }
   }
}
