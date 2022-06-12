package
{
   import §""3§.§,"5§;
   import §"v§.§3!w§;
   import §%_§.§4m§;
   import §%c§.§=!X§;
   import §'@§.§4!n§;
   import §'@§.§4&§;
   import §6p§.§?%§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.utils.getTimer;
   
   public class AngryBirdsBuildAndShareCanvas extends §,"5§
   {
      
      public static const VERSION:String = "0.0.1.7 (r99948)";
       
      
      private var §0Z§:Boolean = false;
      
      public function AngryBirdsBuildAndShareCanvas()
      {
         super();
         §4m§.doJsCall("flashStartsLoading");
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
            loaderInfo.addEventListener(Event.COMPLETE,this.§"!N§);
         }
         else
         {
            this.§2!@§();
         }
      }
      
      protected function §"!N§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§"!N§);
         this.§2!@§();
      }
      
      private function §2!@§() : void
      {
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§7!5§);
         new §>"§(this);
      }
      
      private function §7!5§(param1:UncaughtErrorEvent) : void
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
         if(!this.§0Z§)
         {
            this.§0Z§ = true;
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
            §4&§.§@!Q§(§4!n§.ACTION_APPLICATION_CRASH,_loc2_.toString());
            if(§=!X§.§9'§ != null)
            {
               _loc4_ = §=!X§.§9'§.§^!t§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            if((_loc7_ = §3!w§.§%n§) == null)
            {
               _loc7_ = "";
            }
            _loc8_ = "GPU";
            if(§?%§.§ !J§)
            {
               _loc8_ = "CPU";
            }
            _loc9_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + VERSION;
            §4&§.§@!Q§(§4!n§.§3!c§,_loc9_,_loc6_);
            if(_loc3_)
            {
               _loc12_ = _loc9_ + "::" + _loc3_;
               §4&§.§@!Q§(§4!n§.§'"&§,_loc12_,_loc6_);
            }
         }
      }
   }
}
