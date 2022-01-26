package
{
   import §_-9a§.§_-a5§;
   import §_-Is§.§_-3Q§;
   import §_-TG§.§_-up§;
   import §_-TX§.§_-0X§;
   import §_-Xz§.StateConnecting;
   import §_-Y7§.§_-Gz§;
   import §_-aD§.§_-OS§;
   import §_-kI§.§_-Iv§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.utils.getTimer;
   
   public class CheetosAngryBirdsCanvas extends §_-a5§
   {
      
      public static const VERSION:String = "0.0.0.10";
       
      
      private var §_-fQ§:Boolean = false;
      
      public function CheetosAngryBirdsCanvas()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§_-Bj§);
         }
      }
      
      private function init() : void
      {
         this.addExternalInterfaceCallbacks();
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§_-9p§);
         }
         else
         {
            this.§_-rL§();
         }
      }
      
      private function addExternalInterfaceCallbacks() : void
      {
         §_-3Q§.addCallback("loginPlayer",this.loginPlayer);
         §_-3Q§.addCallback("logout",this.logout);
      }
      
      public function loginPlayer(param1:String) : Boolean
      {
         if(param1)
         {
            if(§_-Iv§.§_-r5§ == null)
            {
               this.§_-Qb§(param1);
            }
            else if(§_-Iv§.§_-r5§.name != param1)
            {
               this.logout();
               this.§_-Qb§(param1);
            }
            return true;
         }
         return false;
      }
      
      private function §_-Qb§(param1:String) : void
      {
         §_-Iv§.§_-r5§ = new §_-up§();
         §_-Iv§.§_-C1§ = §_-Gz§.§_-ZJ§();
         §_-Iv§.§_-r5§.§_-Go§ = param1;
         §_-Iv§.§_-r5§.name = param1;
         §_-WX§.§_-nw§.§_-cz§();
      }
      
      public function logout() : Boolean
      {
         §_-Iv§.§_-r5§ = null;
         §_-Iv§.§_-C1§ = null;
         §_-WX§.§_-nw§.§_-SD§(StateConnecting.§_-3o§);
         return true;
      }
      
      private function §_-Bj§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§_-Bj§);
         this.init();
      }
      
      private function §_-9p§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§_-9p§);
         this.§_-rL§();
      }
      
      private function §_-7N§(param1:Event) : void
      {
      }
      
      private function §_-oM§(param1:Event) : void
      {
      }
      
      private function §_-rL§() : void
      {
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§_-Z-§);
         new §_-WX§(this);
      }
      
      private function §_-Z-§(param1:UncaughtErrorEvent) : void
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
         if(!this.§_-fQ§)
         {
            this.§_-fQ§ = true;
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
            §_-OS§.§_-0-7§(§_-OS§.§_-m4§,_loc2_.toString());
            if(§_-0X§.§_-wL§ != null)
            {
               _loc4_ = §_-0X§.§_-wL§.§_-X8§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            _loc7_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + VERSION;
            §_-OS§.§_-0-7§(§_-OS§.§_-6a§,_loc7_,_loc6_);
            if(_loc3_)
            {
               _loc10_ = _loc7_ + "::" + _loc3_;
               §_-OS§.§_-0-7§(§_-OS§.§_-cw§,_loc10_,_loc6_);
            }
         }
      }
   }
}
