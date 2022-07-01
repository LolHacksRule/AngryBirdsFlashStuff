package com.angrybirds.utils
{
   import §-!F§.§%>§;
   import §-!F§.§]L§;
   import §5!W§.§>P§;
   import §>!a§.§5l§;
   import com.angrybirds.§4!l§;
   import flash.events.ErrorEvent;
   import flash.events.EventDispatcher;
   import flash.events.UncaughtErrorEvent;
   import flash.events.UncaughtErrorEvents;
   
   public class §#+§ extends EventDispatcher
   {
       
      
      private var §^r§:Boolean = false;
      
      private var §-!K§:Number;
      
      protected var §^!§:§5l§;
      
      protected var §&!p§:String;
      
      public function §#+§(param1:UncaughtErrorEvents, param2:String)
      {
         super();
         this.§-!K§ = new Date().time;
         this.§&!p§ = param2;
         param1.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§8!I§);
      }
      
      protected function onError(param1:UncaughtErrorEvent) : void
      {
      }
      
      public function §"!b§(param1:§5l§) : void
      {
         this.§^!§ = param1;
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
         var _loc6_:int = Math.round((new Date().time - this.§-!K§) / 1000);
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
         §]L§.§<'§(_loc2_,_loc6_);
         if(§4!l§.§6>§ != null)
         {
            _loc4_ = §4!l§.§6>§.§9!a§();
         }
         if(_loc4_ == null || _loc4_.length == 0)
         {
            _loc4_ = "NoState";
         }
         var _loc7_:String = "";
         if(this.§^!§ && this.§^!§.currentLevel != null)
         {
            _loc7_ = this.§^!§.currentLevel;
         }
         var _loc8_:String = "GPU";
         if(§>P§.§;_§ == null)
         {
            _loc8_ = "NULL";
         }
         else if(§>P§.§case §)
         {
            _loc8_ = "CPU";
         }
         var _loc9_:String = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + this.§&!p§;
         §]L§.§0!S§(§%>§.§?"&§,_loc9_,_loc6_);
         if(_loc3_)
         {
            _loc12_ = _loc9_ + "::" + _loc3_;
            §]L§.§0!S§(§%>§.§]n§,_loc12_,_loc6_);
         }
         else
         {
            §]L§.§0!S§(§%>§.§?"&§,_loc9_,_loc6_);
         }
      }
      
      private function §8!I§(param1:UncaughtErrorEvent) : void
      {
         if(this.§^r§)
         {
            return;
         }
         this.§^r§ = true;
         this.reportError(param1);
         this.onError(param1);
      }
   }
}
