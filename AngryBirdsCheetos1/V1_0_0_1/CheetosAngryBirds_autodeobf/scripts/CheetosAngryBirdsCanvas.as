package
{
   import §_-3N§.§_-Dp§;
   import §_-FK§.§_-sd§;
   import §_-QJ§.§_-006§;
   import §_-bw§.§_-zb§;
   import §_-fg§.StateConnecting;
   import §_-gC§.§_-XR§;
   import §_-q1§.§_-33§;
   import §_-wO§.§_-e9§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.utils.getTimer;
   
   public class CheetosAngryBirdsCanvas extends §_-006§
   {
      
      public static const VERSION:String = "0.0.0.10";
       
      
      private var §_-ro§:Boolean = false;
      
      public function CheetosAngryBirdsCanvas()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§_-zh§);
         }
      }
      
      private function init() : void
      {
         this.addExternalInterfaceCallbacks();
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§_-TZ§);
         }
         else
         {
            this.§_-0-J§();
         }
      }
      
      private function addExternalInterfaceCallbacks() : void
      {
         §_-Dp§.addCallback("loginPlayer",this.loginPlayer);
         §_-Dp§.addCallback("logout",this.logout);
      }
      
      public function loginPlayer(param1:String) : Boolean
      {
         if(param1)
         {
            if(§_-zb§.§_-0Y§ == null)
            {
               this.§_-rj§(param1);
            }
            else if(§_-zb§.§_-0Y§.name != param1)
            {
               this.logout();
               this.§_-rj§(param1);
            }
            return true;
         }
         return false;
      }
      
      private function §_-rj§(param1:String) : void
      {
         §_-zb§.§_-0Y§ = new §_-sd§();
         §_-zb§.§_-MA§ = §_-33§.§_-gn§();
         §_-zb§.§_-0Y§.§_-PG§ = param1;
         §_-zb§.§_-0Y§.name = param1;
         §_-Vc§.§_-qI§.§_-wM§();
      }
      
      public function logout() : Boolean
      {
         §_-zb§.§_-0Y§ = null;
         §_-zb§.§_-MA§ = null;
         §_-Vc§.§_-qI§.§_-to§(StateConnecting.§_-bg§);
         return true;
      }
      
      private function §_-zh§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§_-zh§);
         this.init();
      }
      
      private function §_-TZ§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§_-TZ§);
         this.§_-0-J§();
      }
      
      private function §_-oG§(param1:Event) : void
      {
      }
      
      private function §_-Od§(param1:Event) : void
      {
      }
      
      private function §_-0-J§() : void
      {
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§_-R4§);
         new §_-Vc§(this);
      }
      
      private function §_-R4§(param1:UncaughtErrorEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:Error = null;
         var _loc9_:ErrorEvent = null;
         var _loc10_:String = null;
         if(!this.§_-ro§)
         {
            this.§_-ro§ = true;
            _loc2_ = 0;
            _loc3_ = null;
            _loc4_ = "";
            _loc5_ = "-";
            _loc6_ = Math.round(getTimer() / 1000);
            if(param1.error is Error)
            {
               _loc2_ = (_loc8_ = param1.error as Error).errorID;
               _loc5_ = _loc8_.message;
               _loc3_ = _loc8_.getStackTrace();
            }
            else if(param1.error is ErrorEvent)
            {
               _loc2_ = (_loc9_ = param1.error as ErrorEvent).errorID;
            }
            §_-e9§.§_-k§(§_-e9§.§_-ox§,_loc2_.toString());
            if(§_-XR§.§_-tL§ != null)
            {
               _loc4_ = §_-XR§.§_-tL§.§_-kK§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            _loc7_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + VERSION;
            §_-e9§.§_-k§(§_-e9§.§_-2n§,_loc7_,_loc6_);
            if(_loc3_)
            {
               _loc10_ = _loc7_ + "::" + _loc3_;
               §_-e9§.§_-k§(§_-e9§.§_-Rz§,_loc10_,_loc6_);
            }
         }
      }
   }
}
