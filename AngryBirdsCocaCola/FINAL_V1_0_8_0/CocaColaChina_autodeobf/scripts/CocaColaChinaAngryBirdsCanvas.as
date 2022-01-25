package
{
   import §%!^§.§"=§;
   import §&$§.§6g§;
   import §&$§.§6j§;
   import §+&§.§?y§;
   import §-!D§.§8!]§;
   import §0!b§.§#!=§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.utils.getTimer;
   
   public class CocaColaChinaAngryBirdsCanvas extends §8!]§
   {
      
      public static const VERSION:String = "1.0.0.14";
       
      
      private var §2q§:Boolean = false;
      
      public function CocaColaChinaAngryBirdsCanvas()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§%Z§);
         }
      }
      
      private function init() : void
      {
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§8F§);
         }
         else
         {
            this.§="§();
         }
      }
      
      private function §%Z§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§%Z§);
         this.init();
      }
      
      private function §8F§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§8F§);
         this.§="§();
      }
      
      private function §="§() : void
      {
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§>!L§);
         new §-!#§(this);
      }
      
      private function §>!L§(param1:UncaughtErrorEvent) : void
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
         if(!this.§2q§)
         {
            this.§2q§ = true;
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
            §6g§.§+!J§(§6j§.ACTION_APPLICATION_CRASH,_loc2_.toString());
            if(§#!=§.§3!@§ != null)
            {
               _loc4_ = §#!=§.§3!@§.§-D§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            if((_loc7_ = §"=§.§?x§) == null)
            {
               _loc7_ = "";
            }
            _loc8_ = "GPU";
            if(§?y§.§+r§)
            {
               _loc8_ = "CPU";
            }
            _loc9_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + VERSION;
            §6g§.§+!J§(§6j§.§[!=§,_loc9_,_loc6_);
            if(_loc3_)
            {
               _loc12_ = _loc9_ + "::" + _loc3_;
               §6g§.§+!J§(§6j§.§!7§,_loc12_,_loc6_);
            }
         }
      }
   }
}
