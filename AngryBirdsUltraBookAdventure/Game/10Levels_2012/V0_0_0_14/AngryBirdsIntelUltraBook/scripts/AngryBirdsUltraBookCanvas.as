package
{
   import §!!§.LevelManager;
   import §&!h§.§"[§;
   import §&!h§.§]V§;
   import §5i§.§4!]§;
   import §<i§.§#!%§;
   import §@4§.§,!]§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.utils.getTimer;
   
   public class AngryBirdsUltraBookCanvas extends §#!%§
   {
      
      public static const §+[§:String = "0.0.0.14 r97247)";
       
      
      private var §1-§:Boolean = false;
      
      public function AngryBirdsUltraBookCanvas()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§-8§);
         }
      }
      
      private function init() : void
      {
         §"[§.§ i§(stage,"UA-23082676-25");
         §]V§.§-h§();
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§?]§);
         }
         else
         {
            this.§%!T§();
         }
      }
      
      private function §-8§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§-8§);
         this.init();
      }
      
      private function §?]§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§?]§);
         this.§%!T§();
      }
      
      private function §%!T§() : void
      {
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§`&§);
         new §[!m§(this);
      }
      
      private function §`&§(param1:UncaughtErrorEvent) : void
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
         if(!this.§1-§)
         {
            this.§1-§ = true;
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
            §]V§.§+h§(_loc2_,_loc6_);
            if(§4!]§.§7!G§ != null)
            {
               _loc4_ = §4!]§.§7!G§.§+!0§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            if((_loc7_ = LevelManager.§^!F§) == null)
            {
               _loc7_ = "";
            }
            _loc8_ = "GPU";
            if(§,!]§.§!9§ == null)
            {
               _loc8_ = "NULL";
            }
            else if(§,!]§.§,?§)
            {
               _loc8_ = "CPU";
            }
            _loc9_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + §+[§;
            §]V§.§8![§(§"[§.§!!U§,_loc9_,_loc6_);
            if(_loc3_)
            {
               _loc12_ = _loc9_ + "::" + _loc3_;
               §]V§.§8![§(§"[§.§false§,_loc12_,_loc6_);
            }
         }
      }
   }
}
