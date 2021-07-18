package § !m§
{
   import §#!'§.§6"]§;
   import §,"N§.§=o§;
   import §,"N§.§@#B§;
   import §2"§.§ "F§;
   import §2"§.§7#V§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public dynamic class §^"j§ extends EventDispatcher
   {
      
      public static const §-"9§:String = "spinComplete";
      
      public static const §93§:String = "freeSpinConsumed";
      
      private static const §["o§:Number = 2000;
       
      
      public var §%5§:Boolean = false;
      
      public var §9!h§:Boolean = false;
      
      private var §,!§:int;
      
      private var §#"<§:Boolean = false;
      
      private var §9q§:§7#V§;
      
      private var §&#A§:§ "F§;
      
      private var §'!8§:int;
      
      private var §&!_§:Timer;
      
      public function §^"j§(param1:int)
      {
         super();
         this.§,!§ = param1;
      }
      
      public function get §8!Q§() : int
      {
         return this.§,!§;
      }
      
      public function get §1"d§() : Boolean
      {
         return this.§#"<§;
      }
      
      public function §^"#§() : void
      {
         var _loc1_:§=o§ = null;
         if(this.§#"<§)
         {
            throw new Error("Can\'t spin while it\'s already spinning.");
         }
         if(!this.§&#A§)
         {
            this.§&#A§ = new § "F§(§4#;§.SERVER_ROOT);
         }
         if(this.§,!§ > 0)
         {
            --this.§,!§;
            dispatchEvent(new Event(§93§));
         }
         else
         {
            _loc1_ = §@#B§(§4#;§.singleton.dataModel).§`!W§;
            _loc1_.§@w§(_loc1_.starCoins - §@#B§(§4#;§.singleton.dataModel).§1!f§.§]"g§);
         }
         this.§#"<§ = true;
         this.§9!h§ = true;
         this.§'!8§ = getTimer();
         this.§&#A§.§^"#§(this.§65§);
      }
      
      public function get §^"s§() : §7#V§
      {
         return this.§9q§;
      }
      
      private function §65§(param1:Object) : void
      {
         this.§9q§ = §7#V§(param1);
         var _loc2_:int = getTimer() - this.§'!8§;
         if(_loc2_ < §["o§)
         {
            this.§&!_§ = new Timer(§["o§ - _loc2_);
            this.§&!_§.addEventListener(TimerEvent.TIMER,this.§-!m§);
            this.§&!_§.start();
         }
         else
         {
            this.§[>§();
         }
      }
      
      private function §-!m§(param1:TimerEvent) : void
      {
         this.§[>§();
         this.§&!_§.reset();
         this.§&!_§ = null;
      }
      
      private function §[>§() : void
      {
         this.§#"<§ = false;
         var _loc1_:§@#B§ = §@#B§(§4#;§.singleton.dataModel);
         var _loc2_:String = this.§9q§.itemId;
         var _loc3_:int = this.§9q§.quantity;
         var _loc4_:Boolean = this.§9q§.wasFree;
         _loc1_.§`!W§.§@w§(this.§9q§.§<!d§);
         _loc1_.§]"<§.§#!+§(_loc2_,_loc3_ + _loc1_.§]"<§.§8#K§(_loc2_));
         var _loc5_:String = !!_loc4_ ? §6"]§.§2"#§ : §6"]§.§'"X§;
         §6"]§.§4!9§(_loc5_,_loc2_,_loc3_);
         dispatchEvent(new Event(§-"9§));
      }
   }
}
