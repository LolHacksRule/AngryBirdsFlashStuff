package
{
   import §_-M0§.§_-u4§;
   import §_-fI§.§_-BI§;
   import §_-iq§.§_-l7§;
   import §_-mc§.§_-9j§;
   import §_-uh§.§_-HB§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.utils.getTimer;
   
   public class CustomAngryBirdsCanvas extends §_-l7§
   {
      
      public static const VERSION:String = "1.0.0.14";
       
      
      private var §_-X8§:Boolean = false;
      
      public function CustomAngryBirdsCanvas()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§_-CI§);
         }
      }
      
      private function init() : void
      {
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§_-AH§);
         }
         else
         {
            this.§_-v§();
         }
      }
      
      private function §_-CI§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§_-CI§);
         this.init();
      }
      
      private function §_-AH§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§_-AH§);
         this.§_-v§();
      }
      
      private function §_-v§() : void
      {
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§_-bK§);
         new §_-Tj§(this);
      }
      
      private function §_-bK§(param1:UncaughtErrorEvent) : void
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
         if(!this.§_-X8§)
         {
            this.§_-X8§ = true;
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
            §_-9j§.§_-Ej§(§_-9j§.§_-jd§,_loc2_.toString());
            if(§_-u4§.§_-2p§ != null)
            {
               _loc4_ = §_-u4§.§_-2p§.§_-BV§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            if((_loc7_ = §_-HB§.§_-Z-§) == null)
            {
               _loc7_ = "";
            }
            _loc8_ = "GPU";
            if(§_-BI§.§_-Hp§)
            {
               _loc8_ = "CPU";
            }
            _loc9_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + VERSION;
            §_-9j§.§_-Ej§(§_-9j§.§_-81§,_loc9_,_loc6_);
            if(_loc3_)
            {
               _loc12_ = _loc9_ + "::" + _loc3_;
               §_-9j§.§_-Ej§(§_-9j§.§_-cQ§,_loc12_,_loc6_);
            }
         }
      }
   }
}
