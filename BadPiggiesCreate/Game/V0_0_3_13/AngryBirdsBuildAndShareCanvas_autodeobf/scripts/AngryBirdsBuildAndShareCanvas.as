package
{
   import §#!8§.§&!'§;
   import §,!!§.§!U§;
   import §,!!§.§%!L§;
   import §-!+§.§6"6§;
   import §0s§.§8!z§;
   import §9";§.§,"4§;
   import §=!<§.§5!U§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.utils.getTimer;
   
   public class AngryBirdsBuildAndShareCanvas extends §,"4§
   {
      
      public static const VERSION:String = "0.0.1.7 (r99887)";
       
      
      private var §%J§:Boolean = false;
      
      public function AngryBirdsBuildAndShareCanvas()
      {
         super();
         §&!'§.doJsCall("flashStartsLoading");
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
            loaderInfo.addEventListener(Event.COMPLETE,this.§#!Q§);
         }
         else
         {
            this.§"!r§();
         }
      }
      
      protected function §#!Q§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§#!Q§);
         this.§"!r§();
      }
      
      private function §"!r§() : void
      {
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§]!d§);
         new §@=§(this);
      }
      
      private function §]!d§(param1:UncaughtErrorEvent) : void
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
         if(!this.§%J§)
         {
            this.§%J§ = true;
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
            §!U§.§"!@§(§%!L§.ACTION_APPLICATION_CRASH,_loc2_.toString());
            if(§5!U§.§=J§ != null)
            {
               _loc4_ = §5!U§.§=J§.§6!k§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            if((_loc7_ = §8!z§.§>!&§) == null)
            {
               _loc7_ = "";
            }
            _loc8_ = "GPU";
            if(§6"6§.§5!f§)
            {
               _loc8_ = "CPU";
            }
            _loc9_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + VERSION;
            §!U§.§"!@§(§%!L§.§3!h§,_loc9_,_loc6_);
            if(_loc3_)
            {
               _loc12_ = _loc9_ + "::" + _loc3_;
               §!U§.§"!@§(§%!L§.§1%§,_loc12_,_loc6_);
            }
         }
      }
   }
}
