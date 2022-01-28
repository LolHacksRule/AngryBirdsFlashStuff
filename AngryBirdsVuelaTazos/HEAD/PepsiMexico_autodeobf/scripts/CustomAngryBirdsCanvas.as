package
{
   import §_-2F§.§_-B4§;
   import §_-7x§.§_-4O§;
   import §_-Ku§.§_-Ha§;
   import §_-pm§.§_-gb§;
   import §_-sO§.§_-oG§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.utils.getTimer;
   
   public class CustomAngryBirdsCanvas extends §_-oG§
   {
      
      public static const VERSION:String = "1.0.0.14";
       
      
      private var §_-es§:Boolean = false;
      
      public function CustomAngryBirdsCanvas()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§_-76§);
         }
      }
      
      private function init() : void
      {
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§_-eT§);
         }
         else
         {
            this.§_-px§();
         }
      }
      
      private function §_-76§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§_-76§);
         this.init();
      }
      
      private function §_-eT§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§_-eT§);
         this.§_-px§();
      }
      
      private function §_-px§() : void
      {
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§_-dq§);
         new §_-q0§(this);
      }
      
      private function §_-dq§(param1:UncaughtErrorEvent) : void
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
         if(!this.§_-es§)
         {
            this.§_-es§ = true;
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
            §_-B4§.§_-du§(§_-B4§.§_-w4§,_loc2_.toString());
            if(§_-gb§.§_-oX§ != null)
            {
               _loc4_ = §_-gb§.§_-oX§.§_-B0§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            if((_loc7_ = §_-4O§.§_-FH§) == null)
            {
               _loc7_ = "";
            }
            _loc8_ = "GPU";
            if(§_-Ha§.§_-0E§)
            {
               _loc8_ = "CPU";
            }
            _loc9_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + VERSION;
            §_-B4§.§_-du§(§_-B4§.§_-Qs§,_loc9_,_loc6_);
            if(_loc3_)
            {
               _loc12_ = _loc9_ + "::" + _loc3_;
               §_-B4§.§_-du§(§_-B4§.§_-sv§,_loc12_,_loc6_);
            }
         }
      }
   }
}
