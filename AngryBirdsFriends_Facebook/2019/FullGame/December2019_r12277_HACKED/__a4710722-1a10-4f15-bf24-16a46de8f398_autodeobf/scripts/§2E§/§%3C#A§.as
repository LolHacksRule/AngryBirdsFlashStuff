package §2E§
{
   import §7"1§.§"$D§;
   import §]!4§.§=#c§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §<#A§ extends EventDispatcher
   {
      
      protected static const §&"y§:String = "https://graph.facebook.com/";
      
      protected static var §?L§:String;
       
      
      private var §<#G§:§"$D§;
      
      protected var §];§:String;
      
      private var §^#w§:Object;
      
      private var §#$"§:Object;
      
      private var §[!Q§:Boolean = false;
      
      public function §<#A§(param1:String, param2:Object = null)
      {
         super();
         if(!§?L§)
         {
            throw new Error("Static access token has not been set yet.");
         }
         this.§];§ = param1;
         this.§^#w§ = param2;
      }
      
      public static function set accessToken(param1:String) : void
      {
         §?L§ = param1;
      }
      
      public function load() : void
      {
         var _loc3_:* = null;
         if(this.§<#G§)
         {
            throw new Error("Loading operation is already in progress.");
         }
         this.§#$"§ = null;
         var _loc1_:URLRequest = new URLRequest(this.getGraphURL());
         _loc1_.method = URLRequestMethod.GET;
         var _loc2_:URLVariables = new URLVariables();
         _loc2_.access_token = §?L§;
         if(this.§^#w§)
         {
            for(_loc3_ in this.§^#w§)
            {
               _loc2_[_loc3_] = this.§^#w§[_loc3_];
            }
         }
         _loc1_.data = _loc2_;
         this.§<#G§ = new §"$D§();
         this.§<#G§.addEventListener(Event.COMPLETE,this.§,!P§);
         this.§<#G§.addEventListener(IOErrorEvent.IO_ERROR,this.§5!N§);
         this.§<#G§.load(_loc1_);
      }
      
      private function §5!N§(param1:IOErrorEvent) : void
      {
         if(!this.§[!Q§)
         {
            this.§[!Q§ = true;
            §=#c§.addCallback("accessTokenRenewed",this.§["C§);
            §=#c§.§<!t§("renewAccessToken");
         }
         else
         {
            §=#c§.§<!t§("requestAuthorization");
         }
      }
      
      protected function §,!P§(param1:Event) : void
      {
         var response:Object = null;
         var e:Event = param1;
         try
         {
            response = JSON.parse(this.§<#G§.data);
            this.§[!Q§ = false;
            this.§#$"§ = response;
            dispatchEvent(new Event(Event.COMPLETE));
            return;
         }
         catch(e:Error)
         {
            throw new Error("Invalid JSON from " + getGraphURL() + ":\n" + §<#G§.data);
         }
      }
      
      public function get §'!8§() : Object
      {
         return this.§#$"§;
      }
      
      protected function §["C§(param1:String) : void
      {
         accessToken = param1;
         §=#c§.§`$ §("accessTokenRenewed",this.§["C§);
         this.§<#G§ = null;
         this.load();
      }
      
      public function cancel() : void
      {
         if(this.§<#G§)
         {
            try
            {
               this.§<#G§.close();
            }
            catch(e:Error)
            {
            }
            this.§<#G§ = null;
         }
         this.§[!Q§ = false;
      }
      
      protected function getGraphURL() : String
      {
         return §&"y§ + this.§];§;
      }
   }
}
