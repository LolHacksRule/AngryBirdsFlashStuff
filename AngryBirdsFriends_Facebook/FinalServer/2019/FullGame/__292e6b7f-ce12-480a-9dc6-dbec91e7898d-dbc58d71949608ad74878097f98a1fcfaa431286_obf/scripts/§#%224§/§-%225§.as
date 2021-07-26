package §#"4§
{
   import §#$?§.§7!b§;
   import §4S§.§@§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §-"5§ extends EventDispatcher
   {
      
      protected static const §5"i§:String = "https://graph.facebook.com/";
      
      protected static var §8!-§:String;
       
      
      private var §@$2§:§@#1§;
      
      protected var §##A§:String;
      
      private var §0$"§:Object;
      
      private var §3!t§:Object;
      
      private var §7"8§:Boolean = false;
      
      public function §-"5§(param1:String, param2:Object = null)
      {
         super();
         if(!§8!-§)
         {
            throw new Error("Static access token has not been set yet.");
         }
         this.§##A§ = param1;
         this.§0$"§ = param2;
      }
      
      public static function set accessToken(param1:String) : void
      {
         §8!-§ = param1;
      }
      
      public function load() : void
      {
         var _loc3_:* = null;
         if(this.§@$2§)
         {
            throw new Error("Loading operation is already in progress.");
         }
         this.§3!t§ = null;
         var _loc1_:URLRequest = new URLRequest(this.getGraphURL());
         _loc1_.method = URLRequestMethod.GET;
         var _loc2_:URLVariables = new URLVariables();
         _loc2_.access_token = §8!-§;
         if(this.§0$"§)
         {
            for(_loc3_ in this.§0$"§)
            {
               _loc2_[_loc3_] = this.§0$"§[_loc3_];
            }
         }
         _loc1_.data = _loc2_;
         this.§@$2§ = new §@#1§();
         this.§@$2§.addEventListener(Event.COMPLETE,this.§%!S§);
         this.§@$2§.addEventListener(IOErrorEvent.IO_ERROR,this.§^!b§);
         this.§@$2§.load(_loc1_);
      }
      
      private function §^!b§(param1:IOErrorEvent) : void
      {
         if(!this.§7"8§)
         {
            this.§7"8§ = true;
            §7!b§.addCallback("accessTokenRenewed",this.§3!8§);
            §7!b§.§7@§("renewAccessToken");
         }
         else
         {
            §7!b§.§7@§("requestAuthorization");
         }
      }
      
      protected function §%!S§(param1:Event) : void
      {
         var response:Object = null;
         var e:Event = param1;
         try
         {
            response = JSON.parse(this.§@$2§.data);
         }
         catch(e:Error)
         {
            throw new Error("Invalid JSON from " + getGraphURL() + ":\n" + §@$2§.data);
         }
         this.§7"8§ = false;
         this.§3!t§ = response;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public function get §+Z§() : Object
      {
         return this.§3!t§;
      }
      
      protected function §3!8§(param1:String) : void
      {
         accessToken = param1;
         §7!b§.§&#&§("accessTokenRenewed",this.§3!8§);
         this.§@$2§ = null;
         this.load();
      }
      
      public function cancel() : void
      {
         if(this.§@$2§)
         {
            try
            {
               this.§@$2§.close();
            }
            catch(e:Error)
            {
            }
            this.§@$2§ = null;
         }
         this.§7"8§ = false;
      }
      
      protected function getGraphURL() : String
      {
         return §5"i§ + this.§##A§;
      }
   }
}
