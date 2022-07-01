package
{
   import §%!j§.§%K§;
   import §,P§.§'_§;
   import §05§.§?s§;
   import §6!k§.§@B§;
   import §<!1§.§&%§;
   import §<!1§.§0W§;
   import §<i§.§`!r§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.utils.getTimer;
   
   public class AngryBirdsBuildAndShareCanvas extends §@B§
   {
      
      public static const VERSION:String = "0.0.1.7 (r101125)";
       
      
      private var §2!s§:Boolean = false;
      
      public function AngryBirdsBuildAndShareCanvas()
      {
         super();
         §?s§.doJsCall("flashStartsLoading");
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
            loaderInfo.addEventListener(Event.COMPLETE,this.§!p§);
         }
         else
         {
            this.§![§();
         }
      }
      
      protected function §!p§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§!p§);
         this.§![§();
      }
      
      private function §![§() : void
      {
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§?K§);
         new §[!^§(this);
      }
      
      private function §?K§(param1:UncaughtErrorEvent) : void
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
         if(!this.§2!s§)
         {
            this.§2!s§ = true;
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
            §0W§.§#W§(§&%§.ACTION_APPLICATION_CRASH,_loc2_.toString());
            if(§'_§.§+1§ != null)
            {
               _loc4_ = §'_§.§+1§.§get §();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            if((_loc7_ = §`!r§.§0B§) == null)
            {
               _loc7_ = "";
            }
            _loc8_ = "GPU";
            if(§%K§.§%!R§)
            {
               _loc8_ = "CPU";
            }
            _loc9_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + VERSION;
            §0W§.§#W§(§&%§.§2v§,_loc9_,_loc6_);
            if(_loc3_)
            {
               _loc12_ = _loc9_ + "::" + _loc3_;
               §0W§.§#W§(§&%§.§!!`§,_loc12_,_loc6_);
            }
         }
      }
   }
}
