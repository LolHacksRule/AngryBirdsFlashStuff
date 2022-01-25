package
{
   import §!!a§.§9G§;
   import §+R§.§0O§;
   import §=F§.§"n§;
   import §>P§.§"N§;
   import §>P§.§+!%§;
   import §]!>§.§&"§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.utils.getTimer;
   
   public class CocaColaChinaAngryBirdsCanvas extends §&"§
   {
      
      public static const VERSION:String = "1.0.0.14";
       
      
      private var §95§:Boolean = false;
      
      public function CocaColaChinaAngryBirdsCanvas()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§3W§);
         }
      }
      
      private function init() : void
      {
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§2! §);
         }
         else
         {
            this.§<u§();
         }
      }
      
      private function §3W§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§3W§);
         this.init();
      }
      
      private function §2! §(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§2! §);
         this.§<u§();
      }
      
      private function §<u§() : void
      {
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§+!#§);
         new §=i§(this);
      }
      
      private function §+!#§(param1:UncaughtErrorEvent) : void
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
         if(!this.§95§)
         {
            this.§95§ = true;
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
            §"N§.§0o§(§+!%§.ACTION_APPLICATION_CRASH,_loc2_.toString());
            if(§"n§.§%p§ != null)
            {
               _loc4_ = §"n§.§%p§.§7!a§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            if((_loc7_ = §9G§.§>>§) == null)
            {
               _loc7_ = "";
            }
            _loc8_ = "GPU";
            if(§0O§.§3Z§)
            {
               _loc8_ = "CPU";
            }
            _loc9_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + VERSION;
            §"N§.§0o§(§+!%§.§61§,_loc9_,_loc6_);
            if(_loc3_)
            {
               _loc12_ = _loc9_ + "::" + _loc3_;
               §"N§.§0o§(§+!%§.§&!&§,_loc12_,_loc6_);
            }
         }
      }
   }
}
