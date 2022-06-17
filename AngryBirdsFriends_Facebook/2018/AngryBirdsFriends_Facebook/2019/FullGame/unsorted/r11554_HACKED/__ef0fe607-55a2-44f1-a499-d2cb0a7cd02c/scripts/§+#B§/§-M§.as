package §+#B§
{
   import §7#j§.§@"F§;
   import §>"Q§.§7"2§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §-M§ extends EventDispatcher
   {
      
      protected static const §1"d§:String = "https://graph.facebook.com/";
      
      protected static var §%!d§:String;
       
      
      private var §&![§:§7"2§;
      
      protected var §2"H§:String;
      
      private var §<"l§:Object;
      
      private var § $E§:Object;
      
      private var §8!-§:Boolean = false;
      
      public function §-M§(param1:String, param2:Object = null)
      {
         super();
         if(!§%!d§)
         {
            throw new Error("Static access token has not been set yet.");
         }
         this.§2"H§ = param1;
         this.§<"l§ = param2;
      }
      
      public static function set accessToken(param1:String) : void
      {
         §%!d§ = param1;
      }
      
      public function load() : void
      {
         var _loc3_:* = null;
         if(this.§&![§)
         {
            throw new Error("Loading operation is already in progress.");
         }
         this.§ $E§ = null;
         var _loc1_:URLRequest = new URLRequest(this.getGraphURL());
         _loc1_.method = URLRequestMethod.GET;
         var _loc2_:URLVariables = new URLVariables();
         _loc2_.access_token = §%!d§;
         if(this.§<"l§)
         {
            for(_loc3_ in this.§<"l§)
            {
               _loc2_[_loc3_] = this.§<"l§[_loc3_];
            }
         }
         _loc1_.data = _loc2_;
         this.§&![§ = new §7"2§();
         this.§&![§.addEventListener(Event.COMPLETE,this.§&1§);
         this.§&![§.addEventListener(IOErrorEvent.IO_ERROR,this.§!"F§);
         this.§&![§.load(_loc1_);
      }
      
      private function §!"F§(param1:IOErrorEvent) : void
      {
         if(!this.§8!-§)
         {
            this.§8!-§ = true;
            §@"F§.addCallback("accessTokenRenewed",this.§-k§);
            §@"F§.§^$#§("renewAccessToken");
         }
         else
         {
            §@"F§.§^$#§("requestAuthorization");
         }
      }
      
      protected function §&1§(param1:Event) : void
      {
         var response:Object = null;
         var e:Event = param1;
         try
         {
            response = JSON.parse(this.§&![§.data);
            this.§8!-§ = false;
            this.§ $E§ = response;
            dispatchEvent(new Event(Event.COMPLETE));
            return;
         }
         catch(e:Error)
         {
            throw new Error("Invalid JSON from " + getGraphURL() + ":\n" + §&![§.data);
         }
      }
      
      public function get §9$B§() : Object
      {
         return this.§ $E§;
      }
      
      protected function §-k§(param1:String) : void
      {
         accessToken = param1;
         §@"F§.§=F§("accessTokenRenewed",this.§-k§);
         this.§&![§ = null;
         this.load();
      }
      
      public function cancel() : void
      {
         if(this.§&![§)
         {
            try
            {
               this.§&![§.close();
            }
            catch(e:Error)
            {
            }
            this.§&![§ = null;
         }
         this.§8!-§ = false;
      }
      
      protected function getGraphURL() : String
      {
         return §1"d§ + this.§2"H§;
      }
   }
}
