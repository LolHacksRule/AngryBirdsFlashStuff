package §^!T§
{
   import §!b§.§]!s§;
   import §"!H§.§'#!§;
   import §"!H§.§<!f§;
   import §9"U§.§0!2§;
   import §9"U§.§7"1§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public dynamic class §'"9§ extends EventDispatcher
   {
      
      public static const §^"4§:String = "spinComplete";
      
      public static const §9"u§:String = "freeSpinConsumed";
      
      private static const §^"^§:Number = 2000;
       
      
      public var §5!7§:Boolean = false;
      
      public var §2# §:Boolean = false;
      
      private var §!"P§:int;
      
      private var §2!=§:Boolean = false;
      
      private var §0!o§:§<!f§;
      
      private var §5#,§:§'#!§;
      
      private var §!]§:int;
      
      private var §+!q§:Timer;
      
      public function §'"9§(param1:int)
      {
         super();
         this.§!"P§ = param1;
      }
      
      public function get § "h§() : int
      {
         return this.§!"P§;
      }
      
      public function get §1!-§() : Boolean
      {
         return this.§2!=§;
      }
      
      public function §9!4§() : void
      {
         var _loc1_:§0!2§ = null;
         if(this.§2!=§)
         {
            throw new Error("Can\'t spin while it\'s already spinning.");
         }
         if(!this.§5#,§)
         {
            this.§5#,§ = new §'#!§(§4"#§.SERVER_ROOT);
         }
         if(this.§!"P§ > 0)
         {
            --this.§!"P§;
            dispatchEvent(new Event(§9"u§));
         }
         else
         {
            _loc1_ = §7"1§(§4"#§.singleton.dataModel).§&!w§;
            _loc1_.§?c§(_loc1_.starCoins - §7"1§(§4"#§.singleton.dataModel).§,!6§.§ "j§);
         }
         this.§2!=§ = true;
         this.§2# § = true;
         this.§!]§ = getTimer();
         this.§5#,§.§9!4§(this.§["#§);
      }
      
      public function get §="6§() : §<!f§
      {
         return this.§0!o§;
      }
      
      private function §["#§(param1:Object) : void
      {
         this.§0!o§ = §<!f§(param1);
         var _loc2_:int = getTimer() - this.§!]§;
         if(_loc2_ < §^"^§)
         {
            this.§+!q§ = new Timer(§^"^§ - _loc2_);
            this.§+!q§.addEventListener(TimerEvent.TIMER,this.§;$§);
            this.§+!q§.start();
         }
         else
         {
            this.§[!N§();
         }
      }
      
      private function §;$§(param1:TimerEvent) : void
      {
         this.§[!N§();
         this.§+!q§.reset();
         this.§+!q§ = null;
      }
      
      private function §[!N§() : void
      {
         this.§2!=§ = false;
         var _loc1_:§7"1§ = §7"1§(§4"#§.singleton.dataModel);
         var _loc2_:String = this.§0!o§.itemId;
         var _loc3_:int = this.§0!o§.quantity;
         var _loc4_:Boolean = this.§0!o§.wasFree;
         _loc1_.§&!w§.§?c§(this.§0!o§.§[W§);
         _loc1_.§@!K§.§2"q§(_loc2_,_loc3_ + _loc1_.§@!K§.§6"0§(_loc2_));
         var _loc5_:String = !!_loc4_ ? §]!s§.§]!N§ : §]!s§.§?k§;
         §]!s§.§,!T§(_loc5_,_loc2_,_loc3_);
         dispatchEvent(new Event(§^"4§));
      }
   }
}
