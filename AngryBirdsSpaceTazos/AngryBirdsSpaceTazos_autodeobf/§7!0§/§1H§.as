package §7!0§
{
   import § !Y§.§%Y§;
   import § !Y§.§="6§;
   import §,"&§.§9q§;
   import §5Q§.§^!e§;
   import §`!j§.§9"!§;
   import flash.events.ErrorEvent;
   import flash.events.EventDispatcher;
   import flash.events.UncaughtErrorEvent;
   import flash.events.UncaughtErrorEvents;
   
   public class §1H§ extends EventDispatcher
   {
       
      
      private var §<!-§:Boolean = false;
      
      private var §5!o§:Number;
      
      protected var §6u§:§9"!§;
      
      protected var §3!v§:String;
      
      public function §1H§(param1:UncaughtErrorEvents, param2:String)
      {
         super();
         this.§5!o§ = new Date().time;
         this.§3!v§ = param2;
         param1.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§=e§);
      }
      
      protected function onError(param1:UncaughtErrorEvent) : void
      {
      }
      
      public function §8"<§(param1:§9"!§) : void
      {
         this.§6u§ = param1;
      }
      
      protected function §1I§(param1:UncaughtErrorEvent) : void
      {
         var _loc10_:Error = null;
         var _loc11_:ErrorEvent = null;
         var _loc12_:String = null;
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:String = "";
         var _loc5_:String = "-";
         var _loc6_:int = Math.round((new Date().time - this.§5!o§) / 1000);
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
         §="6§.§`" §(_loc2_,_loc6_);
         if(§9q§.§=!!§ != null)
         {
            _loc4_ = §9q§.§=!!§.§6![§();
         }
         if(_loc4_ == null || _loc4_.length == 0)
         {
            _loc4_ = "NoState";
         }
         var _loc7_:String = "";
         if(this.§6u§ && this.§6u§.currentLevel != null)
         {
            _loc7_ = this.§6u§.currentLevel;
         }
         var _loc8_:String = "GPU";
         if(§^!e§.§`?§ == null)
         {
            _loc8_ = "NULL";
         }
         else if(§^!e§.§use§)
         {
            _loc8_ = "CPU";
         }
         var _loc9_:String = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + this.§3!v§;
         §="6§.§^!U§(§%Y§.§8!5§,_loc9_,_loc6_);
         if(_loc3_)
         {
            _loc12_ = _loc9_ + "::" + _loc3_;
            §="6§.§^!U§(§%Y§.§83§,_loc12_,_loc6_);
         }
         else
         {
            §="6§.§^!U§(§%Y§.§8!5§,_loc9_,_loc6_);
         }
      }
      
      private function §=e§(param1:UncaughtErrorEvent) : void
      {
         if(this.§<!-§)
         {
            return;
         }
         this.§<!-§ = true;
         this.§1I§(param1);
         this.onError(param1);
      }
   }
}
