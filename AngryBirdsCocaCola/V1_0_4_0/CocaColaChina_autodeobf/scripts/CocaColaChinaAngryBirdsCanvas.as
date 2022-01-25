package
{
   import §-v§.§,!1§;
   import §6l§.§79§;
   import §86§.§!!d§;
   import §;m§.§&`§;
   import §;m§.§?I§;
   import §=1§.§&H§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.utils.getTimer;
   
   public class CocaColaChinaAngryBirdsCanvas extends §&H§
   {
      
      public static const VERSION:String = "1.0.0.14";
       
      
      private var §2=§:Boolean = false;
      
      public function CocaColaChinaAngryBirdsCanvas()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§3_§);
         }
      }
      
      private function init() : void
      {
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§=i§);
         }
         else
         {
            this.§8#§();
         }
      }
      
      private function §3_§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§3_§);
         this.init();
      }
      
      private function §=i§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§=i§);
         this.§8#§();
      }
      
      private function §8#§() : void
      {
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§1!9§);
         new §"!@§(this);
      }
      
      private function §1!9§(param1:UncaughtErrorEvent) : void
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
         if(!this.§2=§)
         {
            this.§2=§ = true;
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
            §&`§.§"!G§(§?I§.ACTION_APPLICATION_CRASH,_loc2_.toString());
            if(§,!1§.§0!9§ != null)
            {
               _loc4_ = §,!1§.§0!9§.§3]§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            if((_loc7_ = §!!d§.§%1§) == null)
            {
               _loc7_ = "";
            }
            _loc8_ = "GPU";
            if(§79§.§,!>§)
            {
               _loc8_ = "CPU";
            }
            _loc9_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + VERSION;
            §&`§.§"!G§(§?I§.§1!a§,_loc9_,_loc6_);
            if(_loc3_)
            {
               _loc12_ = _loc9_ + "::" + _loc3_;
               §&`§.§"!G§(§?I§.§ 0§,_loc12_,_loc6_);
            }
         }
      }
   }
}
