package §,"N§
{
   import §!"W§.§#"[§;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.getTimer;
   
   public class §?v§ extends EventDispatcher
   {
      
      public static const §]"E§:int = 5;
      
      public static const §`"n§:int = 10;
      
      public static const §@"I§:int = 20;
      
      public static const §5!H§:int = 100;
      
      public static const §5"=§:String = "EnergyRefill";
      
      public static const §=#-§:int = 600000;
       
      
      private var §2!S§:int;
      
      private var §&"W§:int;
      
      private var §7"P§:Number;
      
      private var §[4§:Shape;
      
      private var §2$§:int;
      
      private var §4#J§:§@#B§;
      
      private var §0g§:int;
      
      public function §?v§(param1:int, param2:int, param3:int, param4:int, param5:§@#B§)
      {
         super();
         this.§4#J§ = param5;
         this.update(param1,param2,param3,param4);
         this.§0g§ = -1;
         this.§[4§ = new Shape();
         this.§[4§.addEventListener(Event.ENTER_FRAME,this.§-!u§);
      }
      
      public function get §6"g§() : int
      {
         return this.§2$§;
      }
      
      public function get §%#7§() : int
      {
         return this.§&"W§;
      }
      
      public function §#4§() : Boolean
      {
         if(this.§0g§ == -1)
         {
            this.§0g§ = getTimer();
            return true;
         }
         return this.§0g§ + §=#-§ - getTimer() <= 0;
      }
      
      public function §^"4§() : void
      {
         this.§0g§ = getTimer();
      }
      
      public function get energy() : int
      {
         var _loc1_:int = -1;
         if(this.§4#J§.§4"Z§)
         {
            _loc1_ = this.§4#J§.§4"Z§.§@#3§(§<!9§.§ v§);
         }
         if(_loc1_ >= 0)
         {
            return Math.max(this.§2!S§,§5!H§);
         }
         return this.§2!S§;
      }
      
      public function §@#K§(param1:int) : void
      {
         this.§2!S§ = param1;
         dispatchEvent(new §#"[§(§#"[§.§1c§,this.energy));
      }
      
      public function §%K§(param1:int) : Boolean
      {
         this.§2!S§ += param1;
         dispatchEvent(new §#"[§(§#"[§.ADD,this.energy));
         return true;
      }
      
      public function §9!a§(param1:int) : Boolean
      {
         this.§2!S§ -= param1;
         dispatchEvent(new §#"[§(§#"[§.§["P§,this.energy));
         return true;
      }
      
      public function get §]"w§() : int
      {
         return Math.max(0,(this.§7"P§ - getTimer()) / 1000);
      }
      
      public function get §>#!§() : Number
      {
         return this.§7"P§;
      }
      
      public function update(param1:int, param2:int, param3:int, param4:int, param5:Boolean = false) : void
      {
         this.§&"W§ = param2;
         this.§7"P§ = getTimer() + (param2 - param3) * 1000;
         this.§2$§ = param4;
         this.§@#K§(param1);
      }
      
      private function §-!u§(param1:Event) : void
      {
         if(this.§2!S§ >= this.§6"g§)
         {
            return;
         }
         var _loc2_:int = getTimer();
         var _loc3_:Number = this.§7"P§ - _loc2_;
         if(_loc3_ <= 0)
         {
            this.§7"P§ = this.§&"W§ * 1000 + _loc3_ + _loc2_;
            this.§%K§(1);
            §@!m§(§4#;§.singleton).§""s§.§5!Z§();
            dispatchEvent(new §#"[§(§#"[§.§1c§,this.energy));
         }
      }
      
      public function get §3!@§() : Boolean
      {
         return §@#B§(§4#;§.singleton.dataModel).§4"Z§.§@#3§(§<!9§.§ v§) >= 0;
      }
      
      public function clone() : §?v§
      {
         return new §?v§(this.energy,this.§%#7§,this.§%#7§ - this.§]"w§,this.§6"g§,this.§4#J§);
      }
      
      public function dispose() : void
      {
         this.§[4§.removeEventListener(Event.ENTER_FRAME,this.§-!u§);
         this.§[4§ = null;
      }
   }
}
