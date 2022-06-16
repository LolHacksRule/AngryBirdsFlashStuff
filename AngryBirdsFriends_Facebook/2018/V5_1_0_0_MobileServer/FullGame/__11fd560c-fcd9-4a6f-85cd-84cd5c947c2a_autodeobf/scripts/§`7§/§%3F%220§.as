package §`7§
{
   import §%!x§.§^!K§;
   import §@V§.§6"§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §?"0§ extends EventDispatcher
   {
      
      protected static const §3!3§:String = "https://graph.facebook.com/";
      
      protected static var §`f§:String;
       
      
      private var §>v§:§6"§;
      
      protected var §6"W§:String;
      
      private var §<#0§:Object;
      
      private var §<"y§:Object;
      
      private var §'!y§:Boolean = false;
      
      public function §?"0§(param1:String, param2:Object = null)
      {
         super();
         if(!§`f§)
         {
            throw new Error("Static access token has not been set yet.");
         }
         this.§6"W§ = param1;
         this.§<#0§ = param2;
      }
      
      public static function set accessToken(param1:String) : void
      {
         §`f§ = param1;
      }
      
      public function load() : void
      {
         var _loc3_:* = null;
         if(this.§>v§)
         {
            throw new Error("Loading operation is already in progress.");
         }
         this.§<"y§ = null;
         var _loc1_:URLRequest = new URLRequest(this.getGraphURL());
         _loc1_.method = URLRequestMethod.GET;
         var _loc2_:URLVariables = new URLVariables();
         _loc2_.access_token = §`f§;
         if(this.§<#0§)
         {
            for(_loc3_ in this.§<#0§)
            {
               _loc2_[_loc3_] = this.§<#0§[_loc3_];
            }
         }
         _loc1_.data = _loc2_;
         this.§>v§ = new §6"§();
         this.§>v§.addEventListener(Event.COMPLETE,this.§!"U§);
         this.§>v§.addEventListener(IOErrorEvent.IO_ERROR,this.§3!Q§);
         this.§>v§.load(_loc1_);
      }
      
      private function §3!Q§(param1:IOErrorEvent) : void
      {
         if(!this.§'!y§)
         {
            this.§'!y§ = true;
            §^!K§.addCallback("accessTokenRenewed",this.§##H§);
            §^!K§.§+"D§("renewAccessToken");
         }
         else
         {
            §^!K§.§+"D§("requestAuthorization");
         }
      }
      
      protected function §!"U§(param1:Event) : void
      {
         var response:Object = null;
         var e:Event = param1;
         try
         {
            response = JSON.parse(this.§>v§.data);
         }
         catch(e:Error)
         {
            throw new Error("Invalid JSON from " + getGraphURL() + ":\n" + §>v§.data);
         }
         this.§'!y§ = false;
         this.§<"y§ = response;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public function get §'U§() : Object
      {
         return this.§<"y§;
      }
      
      protected function §##H§(param1:String) : void
      {
         accessToken = param1;
         §^!K§.§,"i§("accessTokenRenewed",this.§##H§);
         this.§>v§ = null;
         this.load();
      }
      
      public function cancel() : void
      {
         if(this.§>v§)
         {
            try
            {
               this.§>v§.close();
            }
            catch(e:Error)
            {
            }
            this.§>v§ = null;
         }
         this.§'!y§ = false;
      }
      
      protected function getGraphURL() : String
      {
         return §3!3§ + this.§6"W§;
      }
   }
}
