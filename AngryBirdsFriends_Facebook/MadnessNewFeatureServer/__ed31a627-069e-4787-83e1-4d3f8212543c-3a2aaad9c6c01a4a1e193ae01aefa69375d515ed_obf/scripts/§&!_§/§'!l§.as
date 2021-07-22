package §&!_§
{
   import §1L§.§9#f§;
   import §]C§.§ !+§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §'!l§ extends EventDispatcher
   {
      
      protected static const §0!4§:String = "https://graph.facebook.com/";
      
      protected static var §>!7§:String;
       
      
      private var §2!N§:§9#f§;
      
      protected var §="X§:String;
      
      private var §&#&§:Object;
      
      private var §9!G§:Object;
      
      private var §8l§:Boolean = false;
      
      public function §'!l§(param1:String, param2:Object = null)
      {
         super();
         if(!§>!7§)
         {
            throw new Error("Static access token has not been set yet.");
         }
         this.§="X§ = param1;
         this.§&#&§ = param2;
      }
      
      public static function set accessToken(param1:String) : void
      {
         §>!7§ = param1;
      }
      
      public function load() : void
      {
         var _loc3_:* = null;
         if(this.§2!N§)
         {
            throw new Error("Loading operation is already in progress.");
         }
         this.§9!G§ = null;
         var _loc1_:URLRequest = new URLRequest(this.getGraphURL());
         _loc1_.method = URLRequestMethod.GET;
         var _loc2_:URLVariables = new URLVariables();
         _loc2_.access_token = §>!7§;
         if(this.§&#&§)
         {
            for(_loc3_ in this.§&#&§)
            {
               _loc2_[_loc3_] = this.§&#&§[_loc3_];
            }
         }
         _loc1_.data = _loc2_;
         this.§2!N§ = new §9#f§();
         this.§2!N§.addEventListener(Event.COMPLETE,this.§2;§);
         this.§2!N§.addEventListener(IOErrorEvent.IO_ERROR,this.§1"Y§);
         this.§2!N§.load(_loc1_);
      }
      
      private function §1"Y§(param1:IOErrorEvent) : void
      {
         if(!this.§8l§)
         {
            this.§8l§ = true;
            § !+§.addCallback("accessTokenRenewed",this.§?"3§);
            § !+§.§>$%§("renewAccessToken");
         }
         else
         {
            § !+§.§>$%§("requestAuthorization");
         }
      }
      
      protected function §2;§(param1:Event) : void
      {
         var response:Object = null;
         var e:Event = param1;
         try
         {
            response = JSON.parse(this.§2!N§.data);
         }
         catch(e:Error)
         {
            throw new Error("Invalid JSON from " + getGraphURL() + ":\n" + §2!N§.data);
         }
         this.§8l§ = false;
         this.§9!G§ = response;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public function get §;#<§() : Object
      {
         return this.§9!G§;
      }
      
      protected function §?"3§(param1:String) : void
      {
         accessToken = param1;
         § !+§.§?!§("accessTokenRenewed",this.§?"3§);
         this.§2!N§ = null;
         this.load();
      }
      
      public function cancel() : void
      {
         if(this.§2!N§)
         {
            try
            {
               this.§2!N§.close();
            }
            catch(e:Error)
            {
            }
            this.§2!N§ = null;
         }
         this.§8l§ = false;
      }
      
      protected function getGraphURL() : String
      {
         return §0!4§ + this.§="X§;
      }
   }
}
