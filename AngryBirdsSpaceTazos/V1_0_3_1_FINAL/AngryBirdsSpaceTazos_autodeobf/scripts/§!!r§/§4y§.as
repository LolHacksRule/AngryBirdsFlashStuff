package §!!r§
{
   import §'!n§.§1!x§;
   import §'!n§.§3"7§;
   import §1f§.§9H§;
   import §4",§.§,!j§;
   import §7!C§.§8!w§;
   import flash.events.ErrorEvent;
   import flash.events.EventDispatcher;
   import flash.events.UncaughtErrorEvent;
   import flash.events.UncaughtErrorEvents;
   
   public class §4y§ extends EventDispatcher
   {
       
      
      private var §'!q§:Boolean = false;
      
      private var §,"A§:Number;
      
      protected var §]m§:§,!j§;
      
      protected var §!!R§:String;
      
      public function §4y§(param1:UncaughtErrorEvents, param2:String)
      {
         super();
         this.§,"A§ = new Date().time;
         this.§!!R§ = param2;
         param1.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§2!`§);
      }
      
      protected function onError(param1:UncaughtErrorEvent) : void
      {
      }
      
      public function §@!-§(param1:§,!j§) : void
      {
         this.§]m§ = param1;
      }
      
      protected function §6N§(param1:UncaughtErrorEvent) : void
      {
         var _loc10_:Error = null;
         var _loc11_:ErrorEvent = null;
         var _loc12_:String = null;
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:String = "";
         var _loc5_:String = "-";
         var _loc6_:int = Math.round((new Date().time - this.§,"A§) / 1000);
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
         §1!x§.§#P§(_loc2_,_loc6_);
         if(§8!w§.§1"?§ != null)
         {
            _loc4_ = §8!w§.§1"?§.§=9§();
         }
         if(_loc4_ == null || _loc4_.length == 0)
         {
            _loc4_ = "NoState";
         }
         var _loc7_:String = "";
         if(this.§]m§ && this.§]m§.currentLevel != null)
         {
            _loc7_ = this.§]m§.currentLevel;
         }
         var _loc8_:String = "GPU";
         if(§9H§.§0"'§ == null)
         {
            _loc8_ = "NULL";
         }
         else if(§9H§.§&!V§)
         {
            _loc8_ = "CPU";
         }
         var _loc9_:String = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + this.§!!R§;
         §1!x§.§6"6§(§3"7§.§>-§,_loc9_,_loc6_);
         if(_loc3_)
         {
            _loc12_ = _loc9_ + "::" + _loc3_;
            §1!x§.§6"6§(§3"7§.§%"&§,_loc12_,_loc6_);
         }
         else
         {
            §1!x§.§6"6§(§3"7§.§>-§,_loc9_,_loc6_);
         }
      }
      
      private function §2!`§(param1:UncaughtErrorEvent) : void
      {
         if(this.§'!q§)
         {
            return;
         }
         this.§'!q§ = true;
         this.§6N§(param1);
         this.onError(param1);
      }
   }
}
