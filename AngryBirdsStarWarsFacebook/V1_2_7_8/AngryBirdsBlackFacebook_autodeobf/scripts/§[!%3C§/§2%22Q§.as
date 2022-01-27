package §[!<§
{
   import §0R§.§0!8§;
   import §>!2§.§0!p§;
   import §>!2§.§@"B§;
   import §`"8§.§-!w§;
   import §`"8§.§6`§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public dynamic class §2"Q§ extends EventDispatcher
   {
      
      public static const §?!b§:String = "spinComplete";
      
      public static const §=!y§:String = "freeSpinConsumed";
      
      private static const §%[§:Number = 2000;
       
      
      public var §="Q§:Boolean = false;
      
      public var §0l§:Boolean = false;
      
      private var §3"P§:int;
      
      private var §="7§:Boolean = false;
      
      private var §7"<§:§0!p§;
      
      private var §1K§:§@"B§;
      
      private var §&"o§:int;
      
      private var §=!`§:Timer;
      
      public function §2"Q§(param1:int)
      {
         super();
         this.§3"P§ = param1;
      }
      
      public function get §&&§() : int
      {
         return this.§3"P§;
      }
      
      public function get §["4§() : Boolean
      {
         return this.§="7§;
      }
      
      public function §]!9§() : void
      {
         var _loc1_:§6`§ = null;
         if(this.§="7§)
         {
            throw new Error("Can\'t spin while it\'s already spinning.");
         }
         if(!this.§1K§)
         {
            this.§1K§ = new §@"B§(§;"@§.SERVER_ROOT);
         }
         if(this.§3"P§ > 0)
         {
            --this.§3"P§;
            dispatchEvent(new Event(§=!y§));
         }
         else
         {
            _loc1_ = §-!w§(§;"@§.singleton.dataModel).§;L§;
            _loc1_.§8"2§(_loc1_.starCoins - §-!w§(§;"@§.singleton.dataModel).§9"1§.§-"G§);
         }
         this.§="7§ = true;
         this.§0l§ = true;
         this.§&"o§ = getTimer();
         this.§1K§.§]!9§(this.§]!2§);
      }
      
      public function get §4!g§() : §0!p§
      {
         return this.§7"<§;
      }
      
      private function §]!2§(param1:Object) : void
      {
         this.§7"<§ = §0!p§(param1);
         var _loc2_:int = getTimer() - this.§&"o§;
         if(_loc2_ < §%[§)
         {
            this.§=!`§ = new Timer(§%[§ - _loc2_);
            this.§=!`§.addEventListener(TimerEvent.TIMER,this.§5"T§);
            this.§=!`§.start();
         }
         else
         {
            this.§[!]§();
         }
      }
      
      private function §5"T§(param1:TimerEvent) : void
      {
         this.§[!]§();
         this.§=!`§.reset();
         this.§=!`§ = null;
      }
      
      private function §[!]§() : void
      {
         this.§="7§ = false;
         var _loc1_:§-!w§ = §-!w§(§;"@§.singleton.dataModel);
         var _loc2_:String = this.§7"<§.itemId;
         var _loc3_:int = this.§7"<§.quantity;
         var _loc4_:Boolean = this.§7"<§.wasFree;
         _loc1_.§;L§.§8"2§(this.§7"<§.§2"F§);
         _loc1_.§=>§.§""e§(_loc2_,_loc3_ + _loc1_.§=>§.§"!V§(_loc2_));
         var _loc5_:String = !!_loc4_ ? §0!8§.§`",§ : §0!8§.§9]§;
         §0!8§.§,">§(_loc5_,_loc2_,_loc3_);
         dispatchEvent(new Event(§?!b§));
      }
   }
}
