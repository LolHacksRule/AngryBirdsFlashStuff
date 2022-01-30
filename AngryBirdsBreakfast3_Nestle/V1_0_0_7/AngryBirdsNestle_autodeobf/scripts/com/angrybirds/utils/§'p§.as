package com.angrybirds.utils
{
   import §!!&§.§!!q§;
   import §!!&§.§@!C§;
   import §!P§.§5!1§;
   import §`V§.§;6§;
   import com.angrybirds.§#Z§;
   import flash.events.ErrorEvent;
   import flash.events.EventDispatcher;
   import flash.events.UncaughtErrorEvent;
   import flash.events.UncaughtErrorEvents;
   
   public class §'p§ extends EventDispatcher
   {
       
      
      private var §=!S§:Boolean = false;
      
      private var §3$§:Number;
      
      protected var §97§:§5!1§;
      
      protected var §7!v§:String;
      
      public function §'p§(param1:UncaughtErrorEvents, param2:String)
      {
         super();
         this.§3$§ = new Date().time;
         this.§7!v§ = param2;
         param1.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§-M§);
      }
      
      protected function onError(param1:UncaughtErrorEvent) : void
      {
      }
      
      public function dynamic(param1:§5!1§) : void
      {
         this.§97§ = param1;
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
         var _loc6_:int = Math.round((new Date().time - this.§3$§) / 1000);
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
         §!!q§.§3!H§(_loc2_,_loc6_);
         if(§#Z§.§-!6§ != null)
         {
            _loc4_ = §#Z§.§-!6§.§=!+§();
         }
         if(_loc4_ == null || _loc4_.length == 0)
         {
            _loc4_ = "NoState";
         }
         var _loc7_:String = "";
         if(this.§97§ && this.§97§.currentLevel != null)
         {
            _loc7_ = this.§97§.currentLevel;
         }
         var _loc8_:String = "GPU";
         if(§;6§.§@X§ == null)
         {
            _loc8_ = "NULL";
         }
         else if(§;6§.§?!C§)
         {
            _loc8_ = "CPU";
         }
         var _loc9_:String = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + this.§7!v§;
         §!!q§.§-!Y§(§@!C§.§4x§,_loc9_,_loc6_);
         if(_loc3_)
         {
            _loc12_ = _loc9_ + "::" + _loc3_;
            §!!q§.§-!Y§(§@!C§.§<!=§,_loc12_,_loc6_);
         }
         else
         {
            §!!q§.§-!Y§(§@!C§.§4x§,_loc9_,_loc6_);
         }
      }
      
      private function §-M§(param1:UncaughtErrorEvent) : void
      {
         if(this.§=!S§)
         {
            return;
         }
         this.§=!S§ = true;
         this.reportError(param1);
         this.onError(param1);
      }
   }
}
