package
{
   import §_-7§.§_-ph§;
   import §_-JR§.§_-yh§;
   import §_-PS§.§_-Xz§;
   import §_-XI§.§_-mk§;
   import §_-qJ§.§_-Xp§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.utils.getTimer;
   
   public class CustomAngryBirdsCanvas extends §_-Xp§
   {
      
      public static const VERSION:String = "1.0.0.14";
       
      
      private var §_-2x§:Boolean = false;
      
      public function CustomAngryBirdsCanvas()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§_-Ku§);
         }
      }
      
      private function init() : void
      {
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§_-9f§);
         }
         else
         {
            this.§_-tW§();
         }
      }
      
      private function §_-Ku§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§_-Ku§);
         this.init();
      }
      
      private function §_-9f§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§_-9f§);
         this.§_-tW§();
      }
      
      private function §_-tW§() : void
      {
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§_-bP§);
         new §_-2U§(this);
      }
      
      private function §_-bP§(param1:UncaughtErrorEvent) : void
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
         if(!this.§_-2x§)
         {
            this.§_-2x§ = true;
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
            §_-mk§.§_-6h§(§_-mk§.§_-ys§,_loc2_.toString());
            if(§_-ph§.§_-g§ != null)
            {
               _loc4_ = §_-ph§.§_-g§.§_-r8§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            if((_loc7_ = §_-Xz§.§_-AP§) == null)
            {
               _loc7_ = "";
            }
            _loc8_ = "GPU";
            if(§_-yh§.§_-Yt§)
            {
               _loc8_ = "CPU";
            }
            _loc9_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + VERSION;
            §_-mk§.§_-6h§(§_-mk§.§_-Gx§,_loc9_,_loc6_);
            if(_loc3_)
            {
               _loc12_ = _loc9_ + "::" + _loc3_;
               §_-mk§.§_-6h§(§_-mk§.§_-R2§,_loc12_,_loc6_);
            }
         }
      }
   }
}
