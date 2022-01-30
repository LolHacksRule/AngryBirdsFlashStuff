package
{
   import §&!&§.§2!w§;
   import §&!&§.§8F§;
   import §1U§.§"!V§;
   import §5!5§.§^e§;
   import §7M§.§"?§;
   import §8"!§.§'e§;
   import §8"'§.§?!`§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.utils.getTimer;
   
   public class AngryBirdsBuildAndShareCanvas extends §'e§
   {
      
      public static const VERSION:String = "0.0.1.7 (r99501)";
       
      
      private var §?0§:Boolean = false;
      
      public function AngryBirdsBuildAndShareCanvas()
      {
         super();
         §?!`§.doJsCall("flashStartsLoading");
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
            loaderInfo.addEventListener(Event.COMPLETE,this.§%"&§);
         }
         else
         {
            this.§%!u§();
         }
      }
      
      protected function §%"&§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§%"&§);
         this.§%!u§();
      }
      
      private function §%!u§() : void
      {
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§=!-§);
         new §7"$§(this);
      }
      
      private function §=!-§(param1:UncaughtErrorEvent) : void
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
         if(!this.§?0§)
         {
            this.§?0§ = true;
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
            §8F§.§1p§(§2!w§.ACTION_APPLICATION_CRASH,_loc2_.toString());
            if(§"!V§.§1T§ != null)
            {
               _loc4_ = §"!V§.§1T§.§7!r§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            if((_loc7_ = §"?§.§4M§) == null)
            {
               _loc7_ = "";
            }
            _loc8_ = "GPU";
            if(§^e§.§^"!§)
            {
               _loc8_ = "CPU";
            }
            _loc9_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + VERSION;
            §8F§.§1p§(§2!w§.§+"4§,_loc9_,_loc6_);
            if(_loc3_)
            {
               _loc12_ = _loc9_ + "::" + _loc3_;
               §8F§.§1p§(§2!w§.§3j§,_loc12_,_loc6_);
            }
         }
      }
   }
}
