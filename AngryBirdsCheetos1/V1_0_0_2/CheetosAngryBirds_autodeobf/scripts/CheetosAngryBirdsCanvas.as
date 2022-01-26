package
{
   import §_-94§.§_-si§;
   import §_-M6§.§_-Qg§;
   import §_-Me§.§_-3A§;
   import §_-Ul§.§_-hI§;
   import §_-gE§.§_-Tb§;
   import §_-ob§.StateConnecting;
   import §_-r8§.§_-G7§;
   import §_-yU§.§_-0p§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.utils.getTimer;
   
   public class CheetosAngryBirdsCanvas extends §_-G7§
   {
      
      public static const VERSION:String = "0.0.0.10";
       
      
      private var §_-Bd§:Boolean = false;
      
      public function CheetosAngryBirdsCanvas()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§_-jb§);
         }
      }
      
      private function init() : void
      {
         this.addExternalInterfaceCallbacks();
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§_-RZ§);
         }
         else
         {
            this.§_-Ch§();
         }
      }
      
      private function addExternalInterfaceCallbacks() : void
      {
         §_-Qg§.addCallback("loginPlayer",this.loginPlayer);
         §_-Qg§.addCallback("logout",this.logout);
      }
      
      public function loginPlayer(param1:String) : Boolean
      {
         if(param1)
         {
            if(§_-Tb§.§_-Bw§ == null)
            {
               this.§_-ox§(param1);
            }
            else if(§_-Tb§.§_-Bw§.name != param1)
            {
               this.logout();
               this.§_-ox§(param1);
            }
            return true;
         }
         return false;
      }
      
      private function §_-ox§(param1:String) : void
      {
         §_-Tb§.§_-Bw§ = new §_-0p§();
         §_-Tb§.§_-gj§ = §_-hI§.§_-ko§();
         §_-Tb§.§_-Bw§.§_-2o§ = param1;
         §_-Tb§.§_-Bw§.name = param1;
         §_-rs§.§_-hd§.§_-wH§();
      }
      
      public function logout() : Boolean
      {
         §_-Tb§.§_-Bw§ = null;
         §_-Tb§.§_-gj§ = null;
         §_-rs§.§_-hd§.§_-k7§(StateConnecting.§_-jn§);
         return true;
      }
      
      private function §_-jb§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§_-jb§);
         this.init();
      }
      
      private function §_-RZ§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§_-RZ§);
         this.§_-Ch§();
      }
      
      private function §_-S2§(param1:Event) : void
      {
      }
      
      private function §_-K7§(param1:Event) : void
      {
      }
      
      private function §_-Ch§() : void
      {
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§_-U9§);
         new §_-rs§(this);
      }
      
      private function §_-U9§(param1:UncaughtErrorEvent) : void
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
         if(!this.§_-Bd§)
         {
            this.§_-Bd§ = true;
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
            §_-3A§.§_-me§(§_-3A§.§_-kc§,_loc2_.toString());
            if(§_-si§.§_-dt§ != null)
            {
               _loc4_ = §_-si§.§_-dt§.§_-xC§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            _loc7_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + VERSION;
            §_-3A§.§_-me§(§_-3A§.§_-Yn§,_loc7_,_loc6_);
            if(_loc3_)
            {
               _loc10_ = _loc7_ + "::" + _loc3_;
               §_-3A§.§_-me§(§_-3A§.§_-A3§,_loc10_,_loc6_);
            }
         }
      }
   }
}
