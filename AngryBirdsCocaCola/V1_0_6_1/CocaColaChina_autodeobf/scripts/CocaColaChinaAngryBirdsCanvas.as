package
{
   import §'!^§.§!!H§;
   import §'!^§.§+4§;
   import §1!4§.§^!^§;
   import §3U§.§2!%§;
   import §9]§.§9J§;
   import §;A§.§7!K§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.utils.getTimer;
   
   public class CocaColaChinaAngryBirdsCanvas extends §^!^§
   {
      
      public static const VERSION:String = "1.0.0.14";
       
      
      private var §1;§:Boolean = false;
      
      public function CocaColaChinaAngryBirdsCanvas()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§0r§);
         }
      }
      
      private function init() : void
      {
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§0,§);
         }
         else
         {
            this.§-!4§();
         }
      }
      
      private function §0r§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§0r§);
         this.init();
      }
      
      private function §0,§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§0,§);
         this.§-!4§();
      }
      
      private function §-!4§() : void
      {
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§#A§);
         new §6T§(this);
      }
      
      private function §#A§(param1:UncaughtErrorEvent) : void
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
         if(!this.§1;§)
         {
            this.§1;§ = true;
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
            §!!H§.§?!O§(§+4§.ACTION_APPLICATION_CRASH,_loc2_.toString());
            if(§7!K§.§7!I§ != null)
            {
               _loc4_ = §7!K§.§7!I§.§<!S§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            if((_loc7_ = §2!%§.§<G§) == null)
            {
               _loc7_ = "";
            }
            _loc8_ = "GPU";
            if(§9J§.§=n§)
            {
               _loc8_ = "CPU";
            }
            _loc9_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + VERSION;
            §!!H§.§?!O§(§+4§.§6c§,_loc9_,_loc6_);
            if(_loc3_)
            {
               _loc12_ = _loc9_ + "::" + _loc3_;
               §!!H§.§?!O§(§+4§.§]!0§,_loc12_,_loc6_);
            }
         }
      }
   }
}
