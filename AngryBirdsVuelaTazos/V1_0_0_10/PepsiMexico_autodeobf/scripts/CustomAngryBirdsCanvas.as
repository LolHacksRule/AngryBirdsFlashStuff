package
{
   import §_-HJ§.§_-cL§;
   import §_-I1§.§_-2N§;
   import §_-Yc§.§_-Yg§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.utils.getTimer;
   
   public class CustomAngryBirdsCanvas extends §_-Yg§
   {
      
      public static const VERSION:String = "1.0.0.10";
       
      
      private var §_-O-§:Boolean = false;
      
      public function CustomAngryBirdsCanvas()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§_-VS§);
         }
      }
      
      private function init() : void
      {
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§_-UZ§);
         }
         else
         {
            this.§_-aF§();
         }
      }
      
      private function §_-VS§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§_-VS§);
         this.init();
      }
      
      private function §_-UZ§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§_-UZ§);
         this.§_-aF§();
      }
      
      private function §_-aF§() : void
      {
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§_-2K§);
         new §_-5e§(this);
      }
      
      private function §_-2K§(param1:UncaughtErrorEvent) : void
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
         if(!this.§_-O-§)
         {
            this.§_-O-§ = true;
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
            §_-cL§.§_-JT§(§_-cL§.§_-42§,_loc2_.toString());
            if(§_-2N§.§_-kt§ != null)
            {
               _loc4_ = §_-2N§.§_-kt§.§_-Hy§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            _loc7_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + VERSION;
            §_-cL§.§_-JT§(§_-cL§.§_-l7§,_loc7_,_loc6_);
            if(_loc3_)
            {
               _loc10_ = _loc7_ + "::" + _loc3_;
               §_-cL§.§_-JT§(§_-cL§.§_-3s§,_loc10_,_loc6_);
            }
         }
      }
   }
}
