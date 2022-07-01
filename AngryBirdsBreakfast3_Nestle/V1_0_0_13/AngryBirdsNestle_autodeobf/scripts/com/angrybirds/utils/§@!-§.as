package com.angrybirds.utils
{
   import §3!0§.§`i§;
   import §=!d§.§5!5§;
   import §`!s§.§!z§;
   import §`!s§.§5P§;
   import flash.events.ErrorEvent;
   import flash.events.EventDispatcher;
   import flash.events.UncaughtErrorEvent;
   import flash.events.UncaughtErrorEvents;
   
   public class §@!-§ extends EventDispatcher
   {
       
      
      private var §^!R§:Boolean = false;
      
      private var §-!4§:Number;
      
      protected var §#n§:§-g§;
      
      protected var §,"7§:String;
      
      public function §@!-§(param1:UncaughtErrorEvents, param2:String)
      {
         super();
         this.§-!4§ = new Date().time;
         this.§,"7§ = param2;
         param1.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§#!W§);
      }
      
      protected function onError(param1:UncaughtErrorEvent) : void
      {
      }
      
      public function §-,§(param1:§-g§) : void
      {
         this.§#n§ = param1;
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
         var _loc6_:int = Math.round((new Date().time - this.§-!4§) / 1000);
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
         §5P§.§2Z§(_loc2_,_loc6_);
         if(§`i§.§+H§ != null)
         {
            _loc4_ = §`i§.§+H§.§>`§();
         }
         if(_loc4_ == null || _loc4_.length == 0)
         {
            _loc4_ = "NoState";
         }
         var _loc7_:String = "";
         if(this.§#n§ && this.§#n§.currentLevel != null)
         {
            _loc7_ = this.§#n§.currentLevel;
         }
         var _loc8_:String = "GPU";
         if(§5!5§.§^'§ == null)
         {
            _loc8_ = "NULL";
         }
         else if(§5!5§.§ 4§)
         {
            _loc8_ = "CPU";
         }
         var _loc9_:String = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + this.§,"7§;
         §5P§.§ !F§(§!z§.§ ^§,_loc9_,_loc6_);
         if(_loc3_)
         {
            _loc12_ = _loc9_ + "::" + _loc3_;
            §5P§.§ !F§(§!z§.§=!W§,_loc12_,_loc6_);
         }
         else
         {
            §5P§.§ !F§(§!z§.§ ^§,_loc9_,_loc6_);
         }
      }
      
      private function §#!W§(param1:UncaughtErrorEvent) : void
      {
         if(this.§^!R§)
         {
            return;
         }
         this.§^!R§ = true;
         this.reportError(param1);
         this.onError(param1);
      }
   }
}
