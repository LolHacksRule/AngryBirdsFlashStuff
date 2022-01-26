package
{
   import §_-Hw§.§_-3C§;
   import §_-Xr§.§_-cF§;
   import §_-kI§.§_-Z6§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.utils.getTimer;
   
   public class CustomAngryBirdsCanvas extends §_-Z6§
   {
      
      public static const VERSION:String = "1.0.0.12";
       
      
      private var §_-4E§:Boolean = false;
      
      public function CustomAngryBirdsCanvas()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§_-Jp§);
         }
      }
      
      private function init() : void
      {
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§_-Ax§);
         }
         else
         {
            this.§_-Xu§();
         }
      }
      
      private function §_-Jp§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§_-Jp§);
         this.init();
      }
      
      private function §_-Ax§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§_-Ax§);
         this.§_-Xu§();
      }
      
      private function §_-Xu§() : void
      {
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§_-QA§);
         new §_-0Y§(this);
      }
      
      private function §_-QA§(param1:UncaughtErrorEvent) : void
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
         if(!this.§_-4E§)
         {
            this.§_-4E§ = true;
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
            §_-cF§.§_-Wt§(§_-cF§.§_-ab§,_loc2_.toString());
            if(§_-3C§.§_-dB§ != null)
            {
               _loc4_ = §_-3C§.§_-dB§.§_-qR§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            _loc7_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + VERSION;
            §_-cF§.§_-Wt§(§_-cF§.§_-KZ§,_loc7_,_loc6_);
            if(_loc3_)
            {
               _loc10_ = _loc7_ + "::" + _loc3_;
               §_-cF§.§_-Wt§(§_-cF§.§_-0P§,_loc10_,_loc6_);
            }
         }
      }
   }
}
