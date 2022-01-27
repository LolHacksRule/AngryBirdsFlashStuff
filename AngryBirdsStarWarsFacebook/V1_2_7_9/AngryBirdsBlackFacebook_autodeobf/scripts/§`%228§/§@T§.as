package §`"8§
{
   import §1!o§.§^!#§;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.getTimer;
   
   public class §@T§ extends EventDispatcher
   {
      
      public static const §8"b§:int = 5;
      
      public static const §89§:int = 10;
      
      public static const §<T§:int = 20;
      
      public static const §#"e§:int = 100;
      
      public static const §`!z§:String = "EnergyRefill";
      
      public static const §5"p§:int = 600000;
       
      
      private var §2"s§:int;
      
      private var §+!D§:int;
      
      private var §7E§:Number;
      
      private var §6#0§:Shape;
      
      private var §?"X§:int;
      
      private var §]S§:§-!w§;
      
      private var §&! §:int;
      
      public function §@T§(param1:int, param2:int, param3:int, param4:int, param5:§-!w§)
      {
         super();
         this.§]S§ = param5;
         this.update(param1,param2,param3,param4);
         this.§&! § = -1;
         this.§6#0§ = new Shape();
         this.§6#0§.addEventListener(Event.ENTER_FRAME,this.§`_§);
      }
      
      public function get §2!k§() : int
      {
         return this.§?"X§;
      }
      
      public function get §="A§() : int
      {
         return this.§+!D§;
      }
      
      public function §#"4§() : Boolean
      {
         if(this.§&! § == -1)
         {
            this.§&! § = getTimer();
            return true;
         }
         return this.§&! § + §5"p§ - getTimer() <= 0;
      }
      
      public function §^"U§() : void
      {
         this.§&! § = getTimer();
      }
      
      public function get energy() : int
      {
         var _loc1_:int = -1;
         if(this.§]S§.§?v§)
         {
            _loc1_ = this.§]S§.§?v§.§-o§(§^x§.§,!%§);
         }
         if(_loc1_ >= 0)
         {
            return Math.max(this.§2"s§,§#"e§);
         }
         return this.§2"s§;
      }
      
      public function §&"?§(param1:int) : void
      {
         this.§2"s§ = param1;
         dispatchEvent(new §^!#§(§^!#§.§4f§,this.energy));
      }
      
      public function §2!0§(param1:int) : Boolean
      {
         this.§2"s§ += param1;
         dispatchEvent(new §^!#§(§^!#§.§<!F§,this.energy));
         return true;
      }
      
      public function §`"H§(param1:int) : Boolean
      {
         this.§2"s§ -= param1;
         dispatchEvent(new §^!#§(§^!#§.§ !]§,this.energy));
         return true;
      }
      
      public function get §5"#§() : int
      {
         return Math.max(0,(this.§7E§ - getTimer()) / 1000);
      }
      
      public function get §9"K§() : Number
      {
         return this.§7E§;
      }
      
      public function update(param1:int, param2:int, param3:int, param4:int, param5:Boolean = false) : void
      {
         this.§+!D§ = param2;
         this.§7E§ = getTimer() + (param2 - param3) * 1000;
         this.§?"X§ = param4;
         this.§&"?§(param1);
      }
      
      private function §`_§(param1:Event) : void
      {
         if(this.§2"s§ >= this.§2!k§)
         {
            return;
         }
         var _loc2_:int = getTimer();
         var _loc3_:Number = this.§7E§ - _loc2_;
         if(_loc3_ <= 0)
         {
            this.§7E§ = this.§+!D§ * 1000 + _loc3_ + _loc2_;
            this.§2!0§(1);
            §&"1§(§;"@§.singleton).§`!u§.§%!s§();
            dispatchEvent(new §^!#§(§^!#§.§4f§,this.energy));
         }
      }
      
      public function get §'O§() : Boolean
      {
         return §-!w§(§;"@§.singleton.dataModel).§?v§.§-o§(§^x§.§,!%§) >= 0;
      }
      
      public function clone() : §@T§
      {
         return new §@T§(this.energy,this.§="A§,this.§="A§ - this.§5"#§,this.§2!k§,this.§]S§);
      }
      
      public function dispose() : void
      {
         this.§6#0§.removeEventListener(Event.ENTER_FRAME,this.§`_§);
         this.§6#0§ = null;
      }
   }
}
