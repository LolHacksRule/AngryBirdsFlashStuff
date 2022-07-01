package
{
   import §!!A§.§ "!§;
   import §!!A§.§@P§;
   import §&"&§.§8!"§;
   import §-N§.§=!]§;
   import §3!S§.§%s§;
   import §6!&§.§1!c§;
   import §^s§.§#!p§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.utils.getTimer;
   
   public class AngryBirdsBuildAndShareCanvas extends §#!p§
   {
      
      public static const VERSION:String = "0.0.1.7 (r99441)";
       
      
      private var §4x§:Boolean = false;
      
      public function AngryBirdsBuildAndShareCanvas()
      {
         super();
         §8!"§.doJsCall("flashStartsLoading");
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
            loaderInfo.addEventListener(Event.COMPLETE,this.§32§);
         }
         else
         {
            this.§?0§();
         }
      }
      
      protected function §32§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§32§);
         this.§?0§();
      }
      
      private function §?0§() : void
      {
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§<,§);
         new §1+§(this);
      }
      
      private function §<,§(param1:UncaughtErrorEvent) : void
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
         if(!this.§4x§)
         {
            this.§4x§ = true;
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
            § "!§.static(§@P§.ACTION_APPLICATION_CRASH,_loc2_.toString());
            if(§%s§.§8l§ != null)
            {
               _loc4_ = §%s§.§8l§.§>U§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            if((_loc7_ = §1!c§.§'Z§) == null)
            {
               _loc7_ = "";
            }
            _loc8_ = "GPU";
            if(§=!]§.§&!f§)
            {
               _loc8_ = "CPU";
            }
            _loc9_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + VERSION;
            § "!§.static(§@P§.§-$§,_loc9_,_loc6_);
            if(_loc3_)
            {
               _loc12_ = _loc9_ + "::" + _loc3_;
               § "!§.static(§@P§.§&m§,_loc12_,_loc6_);
            }
         }
      }
   }
}
