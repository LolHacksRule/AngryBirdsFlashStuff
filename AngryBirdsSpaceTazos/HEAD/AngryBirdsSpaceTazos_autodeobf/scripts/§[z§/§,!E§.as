package §[z§
{
   import §'!B§.§8T§;
   import §1z§.§^!@§;
   import §4u§.§1y§;
   import §4u§.§]b§;
   import §>"2§.§8k§;
   import flash.events.ErrorEvent;
   import flash.events.EventDispatcher;
   import flash.events.UncaughtErrorEvent;
   import flash.events.UncaughtErrorEvents;
   
   public class §,!E§ extends EventDispatcher
   {
       
      
      private var §9!d§:Boolean = false;
      
      private var §;!_§:Number;
      
      protected var §#"=§:§^!@§;
      
      protected var §@O§:String;
      
      public function §,!E§(param1:UncaughtErrorEvents, param2:String)
      {
         super();
         this.§;!_§ = new Date().time;
         this.§@O§ = param2;
         param1.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§!!!§);
      }
      
      protected function onError(param1:UncaughtErrorEvent) : void
      {
      }
      
      public function §3!6§(param1:§^!@§) : void
      {
         this.§#"=§ = param1;
      }
      
      protected function §4" §(param1:UncaughtErrorEvent) : void
      {
         var _loc10_:Error = null;
         var _loc11_:ErrorEvent = null;
         var _loc12_:String = null;
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:String = "";
         var _loc5_:String = "-";
         var _loc6_:int = Math.round((new Date().time - this.§;!_§) / 1000);
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
         §1y§.§2!F§(_loc2_,_loc6_);
         if(§8k§.§^"+§ != null)
         {
            _loc4_ = §8k§.§^"+§.§;y§();
         }
         if(_loc4_ == null || _loc4_.length == 0)
         {
            _loc4_ = "NoState";
         }
         var _loc7_:String = "";
         if(this.§#"=§ && this.§#"=§.currentLevel != null)
         {
            _loc7_ = this.§#"=§.currentLevel;
         }
         var _loc8_:String = "GPU";
         if(§8T§.§5!Y§ == null)
         {
            _loc8_ = "NULL";
         }
         else if(§8T§.§`!q§)
         {
            _loc8_ = "CPU";
         }
         var _loc9_:String = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + this.§@O§;
         §1y§.§<>§(§]b§.§5t§,_loc9_,_loc6_);
         if(_loc3_)
         {
            _loc12_ = _loc9_ + "::" + _loc3_;
            §1y§.§<>§(§]b§.§^"1§,_loc12_,_loc6_);
         }
         else
         {
            §1y§.§<>§(§]b§.§5t§,_loc9_,_loc6_);
         }
      }
      
      private function §!!!§(param1:UncaughtErrorEvent) : void
      {
         if(this.§9!d§)
         {
            return;
         }
         this.§9!d§ = true;
         this.§4" §(param1);
         this.onError(param1);
      }
   }
}
