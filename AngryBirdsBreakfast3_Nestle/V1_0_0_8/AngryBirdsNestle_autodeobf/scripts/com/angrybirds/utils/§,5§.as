package com.angrybirds.utils
{
   import §%f§.§"!i§;
   import §%f§.§?6§;
   import §8!e§.§3"&§;
   import §=!6§.§+8§;
   import com.angrybirds.§4"6§;
   import flash.events.ErrorEvent;
   import flash.events.EventDispatcher;
   import flash.events.UncaughtErrorEvent;
   import flash.events.UncaughtErrorEvents;
   
   public class §,5§ extends EventDispatcher
   {
       
      
      private var §<!l§:Boolean = false;
      
      private var §3!0§:Number;
      
      protected var §!3§:§3"&§;
      
      protected var §>s§:String;
      
      public function §,5§(param1:UncaughtErrorEvents, param2:String)
      {
         super();
         this.§3!0§ = new Date().time;
         this.§>s§ = param2;
         param1.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§,!$§);
      }
      
      protected function onError(param1:UncaughtErrorEvent) : void
      {
      }
      
      public function §7f§(param1:§3"&§) : void
      {
         this.§!3§ = param1;
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
         var _loc6_:int = Math.round((new Date().time - this.§3!0§) / 1000);
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
         §"!i§.§+D§(_loc2_,_loc6_);
         if(§4"6§.§<_§ != null)
         {
            _loc4_ = §4"6§.§<_§.§9"§();
         }
         if(_loc4_ == null || _loc4_.length == 0)
         {
            _loc4_ = "NoState";
         }
         var _loc7_:String = "";
         if(this.§!3§ && this.§!3§.currentLevel != null)
         {
            _loc7_ = this.§!3§.currentLevel;
         }
         var _loc8_:String = "GPU";
         if(§+8§.§0j§ == null)
         {
            _loc8_ = "NULL";
         }
         else if(§+8§.§0"$§)
         {
            _loc8_ = "CPU";
         }
         var _loc9_:String = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + this.§>s§;
         §"!i§.§&!R§(§?6§.§,;§,_loc9_,_loc6_);
         if(_loc3_)
         {
            _loc12_ = _loc9_ + "::" + _loc3_;
            §"!i§.§&!R§(§?6§.§4e§,_loc12_,_loc6_);
         }
         else
         {
            §"!i§.§&!R§(§?6§.§,;§,_loc9_,_loc6_);
         }
      }
      
      private function §,!$§(param1:UncaughtErrorEvent) : void
      {
         if(this.§<!l§)
         {
            return;
         }
         this.§<!l§ = true;
         this.reportError(param1);
         this.onError(param1);
      }
   }
}
