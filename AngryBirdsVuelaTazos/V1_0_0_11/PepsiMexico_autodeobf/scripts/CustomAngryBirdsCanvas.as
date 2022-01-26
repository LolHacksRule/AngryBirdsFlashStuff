package
{
   import §_-4R§.§_-dZ§;
   import §_-Ah§.§_-b§;
   import §_-qT§.§_-c9§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.utils.getTimer;
   
   public class CustomAngryBirdsCanvas extends §_-c9§
   {
      
      public static const VERSION:String = "1.0.0.10";
       
      
      private var §_-f4§:Boolean = false;
      
      public function CustomAngryBirdsCanvas()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§_-lr§);
         }
      }
      
      private function init() : void
      {
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§_-tu§);
         }
         else
         {
            this.§_-Ng§();
         }
      }
      
      private function §_-lr§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§_-lr§);
         this.init();
      }
      
      private function §_-tu§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§_-tu§);
         this.§_-Ng§();
      }
      
      private function §_-Ng§() : void
      {
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§_-6v§);
         new §_-I8§(this);
      }
      
      private function §_-6v§(param1:UncaughtErrorEvent) : void
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
         if(!this.§_-f4§)
         {
            this.§_-f4§ = true;
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
            §_-dZ§.§_-H3§(§_-dZ§.§_-g4§,_loc2_.toString());
            if(§_-b§.§_-jf§ != null)
            {
               _loc4_ = §_-b§.§_-jf§.§_-Ep§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            _loc7_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + VERSION;
            §_-dZ§.§_-H3§(§_-dZ§.§_-jd§,_loc7_,_loc6_);
            if(_loc3_)
            {
               _loc10_ = _loc7_ + "::" + _loc3_;
               §_-dZ§.§_-H3§(§_-dZ§.§_-MK§,_loc10_,_loc6_);
            }
         }
      }
   }
}
