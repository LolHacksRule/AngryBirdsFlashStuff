package §!b§
{
   import §%!G§.§?!g§;
   import §5"Q§.§5"s§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class § ?§ extends EventDispatcher
   {
      
      protected static const §+!=§:String = "https://graph.facebook.com/";
      
      protected static var §;!8§:String;
       
      
      private var §&K§:§?!g§;
      
      private var §]#5§:String;
      
      private var §=!;§:Object;
      
      private var §`8§:Object;
      
      private var §7"w§:Boolean = false;
      
      public function § ?§(param1:String, param2:Object = null)
      {
         super();
         if(!§;!8§)
         {
            throw new Error("Static access token has not been set yet.");
         }
         this.§]#5§ = param1;
         this.§=!;§ = param2;
      }
      
      public static function set accessToken(param1:String) : void
      {
         §;!8§ = param1;
      }
      
      public function load() : void
      {
         var _loc3_:* = null;
         if(this.§&K§)
         {
            throw new Error("Loading operation is already in progress.");
         }
         this.§`8§ = null;
         var _loc1_:URLRequest = new URLRequest(§+!=§ + this.§]#5§);
         _loc1_.method = URLRequestMethod.GET;
         var _loc2_:URLVariables = new URLVariables();
         _loc2_.access_token = §;!8§;
         if(this.§=!;§)
         {
            for(_loc3_ in this.§=!;§)
            {
               _loc2_[_loc3_] = this.§=!;§[_loc3_];
            }
         }
         _loc1_.data = _loc2_;
         this.§&K§ = new §?!g§();
         this.§&K§.addEventListener(Event.COMPLETE,this.§-!z§);
         this.§&K§.addEventListener(IOErrorEvent.IO_ERROR,this.§]p§);
         this.§&K§.load(_loc1_);
      }
      
      private function §]p§(param1:IOErrorEvent) : void
      {
         if(!this.§7"w§)
         {
            this.§7"w§ = true;
            §5"s§.addCallback("accessTokenRenewed",this.§,!j§);
            §5"s§.§<!8§("renewAccessToken");
         }
         else
         {
            §5"s§.§<!8§("requestAuthorization");
         }
      }
      
      protected function §-!z§(param1:Event) : void
      {
         var response:Object = null;
         var e:Event = param1;
         try
         {
            response = JSON.parse(this.§&K§.data);
         }
         catch(e:Error)
         {
            throw new Error("Invalid JSON from " + §+!=§ + §]#5§ + ":\n" + §&K§.data);
         }
         this.§7"w§ = false;
         this.§`8§ = response;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public function get §"# §() : Object
      {
         return this.§`8§;
      }
      
      protected function §,!j§(param1:String) : void
      {
         accessToken = param1;
         §5"s§.§@"-§("accessTokenRenewed",this.§,!j§);
         this.§&K§ = null;
         this.load();
      }
      
      public function §3!]§() : void
      {
         if(this.§&K§)
         {
            try
            {
               this.§&K§.close();
            }
            catch(e:Error)
            {
            }
            this.§&K§ = null;
         }
         this.§7"w§ = false;
      }
   }
}
