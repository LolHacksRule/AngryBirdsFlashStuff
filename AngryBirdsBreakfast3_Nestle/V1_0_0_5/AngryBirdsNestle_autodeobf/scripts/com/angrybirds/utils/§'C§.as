package com.angrybirds.utils
{
   import § !T§.§ q§;
   import §-!Y§.§%!%§;
   import §2W§.§4L§;
   import §2W§.§7"4§;
   import com.angrybirds.§6!E§;
   import flash.events.ErrorEvent;
   import flash.events.EventDispatcher;
   import flash.events.UncaughtErrorEvent;
   import flash.events.UncaughtErrorEvents;
   
   public class §'C§ extends EventDispatcher
   {
       
      
      private var §-"0§:Boolean = false;
      
      private var §'!F§:Number;
      
      protected var §="4§:§ q§;
      
      protected var §,!B§:String;
      
      public function §'C§(param1:UncaughtErrorEvents, param2:String)
      {
         super();
         this.§'!F§ = new Date().time;
         this.§,!B§ = param2;
         param1.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§?b§);
      }
      
      protected function onError(param1:UncaughtErrorEvent) : void
      {
      }
      
      public function §"%§(param1:§ q§) : void
      {
         this.§="4§ = param1;
      }
      
      protected function reportError(param1:UncaughtErrorEvent) : void
      {
         var _loc10_:Error = null;
         var _loc11_:ErrorEvent = null;
         var _loc12_:String = null;
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:String = "";
         var _loc5_:String = "-";
         var _loc6_:int = Math.round((new Date().time - this.§'!F§) / 1000);
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
         §4L§.§7!F§(_loc2_,_loc6_);
         if(§6!E§.§@!U§ != null)
         {
            _loc4_ = §6!E§.§@!U§.§,>§();
         }
         if(_loc4_ == null || _loc4_.length == 0)
         {
            _loc4_ = "NoState";
         }
         var _loc7_:String = "";
         if(this.§="4§ && this.§="4§.currentLevel != null)
         {
            _loc7_ = this.§="4§.currentLevel;
         }
         var _loc8_:String = "GPU";
         if(§%!%§.§"T§ == null)
         {
            _loc8_ = "NULL";
         }
         else if(§%!%§.§4K§)
         {
            _loc8_ = "CPU";
         }
         var _loc9_:String = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + this.§,!B§;
         §4L§.§2!4§(§7"4§.§2!m§,_loc9_,_loc6_);
         if(_loc3_)
         {
            _loc12_ = _loc9_ + "::" + _loc3_;
            §4L§.§2!4§(§7"4§.§?!]§,_loc12_,_loc6_);
         }
         else
         {
            §4L§.§2!4§(§7"4§.§2!m§,_loc9_,_loc6_);
         }
      }
      
      private function §?b§(param1:UncaughtErrorEvent) : void
      {
         if(this.§-"0§)
         {
            return;
         }
         this.§-"0§ = true;
         this.reportError(param1);
         this.onError(param1);
      }
   }
}
