package com.angrybirds.utils
{
   import §'<§.§=!o§;
   import §6!4§.§<!D§;
   import §`6§.§6,§;
   import §`6§.§9a§;
   import com.angrybirds.§6U§;
   import flash.events.ErrorEvent;
   import flash.events.EventDispatcher;
   import flash.events.UncaughtErrorEvent;
   import flash.events.UncaughtErrorEvents;
   
   public class §='§ extends EventDispatcher
   {
       
      
      private var §=w§:Boolean = false;
      
      private var §<o§:Number;
      
      protected var §+o§:§=!o§;
      
      protected var §!9§:String;
      
      public function §='§(param1:UncaughtErrorEvents, param2:String)
      {
         super();
         this.§<o§ = new Date().time;
         this.§!9§ = param2;
         param1.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§3T§);
      }
      
      protected function onError(param1:UncaughtErrorEvent) : void
      {
      }
      
      public function §@T§(param1:§=!o§) : void
      {
         this.§+o§ = param1;
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
         var _loc6_:int = Math.round((new Date().time - this.§<o§) / 1000);
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
         §6,§.§0?§(_loc2_,_loc6_);
         if(§6U§.§&k§ != null)
         {
            _loc4_ = §6U§.§&k§.§]3§();
         }
         if(_loc4_ == null || _loc4_.length == 0)
         {
            _loc4_ = "NoState";
         }
         var _loc7_:String = "";
         if(this.§+o§ && this.§+o§.currentLevel != null)
         {
            _loc7_ = this.§+o§.currentLevel;
         }
         var _loc8_:String = "GPU";
         if(§<!D§.§?!_§ == null)
         {
            _loc8_ = "NULL";
         }
         else if(§<!D§.§,"§)
         {
            _loc8_ = "CPU";
         }
         var _loc9_:String = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + this.§!9§;
         §6,§.§8"0§(§9a§.§0!<§,_loc9_,_loc6_);
         if(_loc3_)
         {
            _loc12_ = _loc9_ + "::" + _loc3_;
            §6,§.§8"0§(§9a§.§%!v§,_loc12_,_loc6_);
         }
         else
         {
            §6,§.§8"0§(§9a§.§0!<§,_loc9_,_loc6_);
         }
      }
      
      private function §3T§(param1:UncaughtErrorEvent) : void
      {
         if(this.§=w§)
         {
            return;
         }
         this.§=w§ = true;
         this.reportError(param1);
         this.onError(param1);
      }
   }
}
