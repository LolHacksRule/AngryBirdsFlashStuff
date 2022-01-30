package
{
   import §!!T§.§"!S§;
   import §'!O§.§[!m§;
   import §,E§.§,!Z§;
   import §,E§.§0!g§;
   import §0!F§.§^d§;
   import §6!]§.§-d§;
   import §`%§.§8!0§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.utils.getTimer;
   
   public class AngryBirdsBuildAndShareCanvas extends §-d§
   {
      
      public static const VERSION:String = "0.0.1.7 (r99328)";
       
      
      private var §>x§:Boolean = false;
      
      public function AngryBirdsBuildAndShareCanvas()
      {
         super();
         §"!S§.doJsCall("flashStartsLoading");
         if(stage)
         {
            this.initialize();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         }
      }
      
      protected function onAddedToStage(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         this.initialize();
      }
      
      private function initialize() : void
      {
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§ !#§);
         }
         else
         {
            this.§?^§();
         }
      }
      
      protected function § !#§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§ !#§);
         this.§?^§();
      }
      
      private function §?^§() : void
      {
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§2!d§);
         new §3!P§(this);
      }
      
      private function §2!d§(param1:UncaughtErrorEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc10_:Error = null;
         var _loc11_:ErrorEvent = null;
         var _loc12_:String = null;
         if(!this.§>x§)
         {
            this.§>x§ = true;
            _loc2_ = 0;
            _loc3_ = null;
            _loc4_ = "";
            _loc5_ = "-";
            _loc6_ = Math.round(getTimer() / 1000);
            if(param1.error is Error)
            {
               _loc2_ = (_loc10_ = param1.error as Error).errorID;
               _loc5_ = _loc10_.message;
               _loc3_ = _loc10_.getStackTrace();
            }
            else if(param1.error is ErrorEvent)
            {
               _loc2_ = (_loc11_ = param1.error as ErrorEvent).errorID;
            }
            §,!Z§.§8"0§(§0!g§.ACTION_APPLICATION_CRASH,_loc2_.toString());
            if(§8!0§.§%R§ != null)
            {
               _loc4_ = §8!0§.§%R§.§+!z§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            if((_loc7_ = §[!m§.§<!D§) == null)
            {
               _loc7_ = "";
            }
            _loc8_ = "GPU";
            if(§^d§.§4!8§)
            {
               _loc8_ = "CPU";
            }
            _loc9_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + VERSION;
            §,!Z§.§8"0§(§0!g§.§#!Z§,_loc9_,_loc6_);
            if(_loc3_)
            {
               _loc12_ = _loc9_ + "::" + _loc3_;
               §,!Z§.§8"0§(§0!g§.§9Q§,_loc12_,_loc6_);
            }
         }
      }
   }
}
