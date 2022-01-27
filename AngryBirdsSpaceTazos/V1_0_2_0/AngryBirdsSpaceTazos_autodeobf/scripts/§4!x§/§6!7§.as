package §4!x§
{
   import §'#§.§9Y§;
   import §'#§.§9m§;
   import §+!9§.§;0§;
   import §3!4§.§ ![§;
   import §;!0§.;
   import flash.events.ErrorEvent;
   import flash.events.EventDispatcher;
   import flash.events.UncaughtErrorEvent;
   import flash.events.UncaughtErrorEvents;
   
   public class §6!7§ extends EventDispatcher
   {
       
      
      private var §"!d§:Boolean = false;
      
      private var §&"§:Number;
      
      protected var §,W§:§#2§;
      
      protected var §`!W§:String;
      
      public function §6!7§(param1:UncaughtErrorEvents, param2:String)
      {
         super();
         this.§&"§ = new Date().time;
         this.§`!W§ = param2;
         param1.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§3!W§);
      }
      
      protected function onError(param1:UncaughtErrorEvent) : void
      {
      }
      
      public function §0!G§(param1:§#2§) : void
      {
         this.§,W§ = param1;
      }
      
      protected function §]8§(param1:UncaughtErrorEvent) : void
      {
         var _loc10_:Error = null;
         var _loc11_:ErrorEvent = null;
         var _loc12_:String = null;
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:String = "";
         var _loc5_:String = "-";
         var _loc6_:int = Math.round((new Date().time - this.§&"§) / 1000);
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
         §9Y§.§1!L§(_loc2_,_loc6_);
         if(§;0§.§3>§ != null)
         {
            _loc4_ = §;0§.§3>§.§+R§();
         }
         if(_loc4_ == null || _loc4_.length == 0)
         {
            _loc4_ = "NoState";
         }
         var _loc7_:String = "";
         if(this.§,W§ && this.§,W§.currentLevel != null)
         {
            _loc7_ = this.§,W§.currentLevel;
         }
         var _loc8_:String = "GPU";
         if(§ ![§.§!G§ == null)
         {
            _loc8_ = "NULL";
         }
         else if(§ ![§.§>n§)
         {
            _loc8_ = "CPU";
         }
         var _loc9_:String = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + this.§`!W§;
         §9Y§.§6x§(§9m§.§ set§,_loc9_,_loc6_);
         if(_loc3_)
         {
            _loc12_ = _loc9_ + "::" + _loc3_;
            §9Y§.§6x§(§9m§.§2T§,_loc12_,_loc6_);
         }
         else
         {
            §9Y§.§6x§(§9m§.§ set§,_loc9_,_loc6_);
         }
      }
      
      private function §3!W§(param1:UncaughtErrorEvent) : void
      {
         if(this.§"!d§)
         {
            return;
         }
         this.§"!d§ = true;
         this.§]8§(param1);
         this.onError(param1);
      }
   }
}
