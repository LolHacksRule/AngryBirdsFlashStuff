package §9"U§
{
   import §?!u§.§&"J§;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.getTimer;
   
   public class §,!c§ extends EventDispatcher
   {
      
      public static const §0@§:int = 5;
      
      public static const §8"m§:int = 10;
      
      public static const §;"X§:int = 20;
      
      public static const §%J§:int = 100;
      
      public static const §%!e§:String = "EnergyRefill";
      
      public static const §!!w§:int = 600000;
       
      
      private var §]t§:int;
      
      private var §]!+§:int;
      
      private var §2"R§:Number;
      
      private var §`"=§:Shape;
      
      private var §="V§:int;
      
      private var §?!$§:§7"1§;
      
      private var §1!@§:int;
      
      public function §,!c§(param1:int, param2:int, param3:int, param4:int, param5:§7"1§)
      {
         super();
         this.§?!$§ = param5;
         this.update(param1,param2,param3,param4);
         this.§1!@§ = -1;
         this.§`"=§ = new Shape();
         this.§`"=§.addEventListener(Event.ENTER_FRAME,this.§^!<§);
      }
      
      public function get §>@§() : int
      {
         return this.§="V§;
      }
      
      public function get §8"C§() : int
      {
         return this.§]!+§;
      }
      
      public function §?1§() : Boolean
      {
         if(this.§1!@§ == -1)
         {
            this.§1!@§ = getTimer();
            return true;
         }
         return this.§1!@§ + §!!w§ - getTimer() <= 0;
      }
      
      public function §if§() : void
      {
         this.§1!@§ = getTimer();
      }
      
      public function get energy() : int
      {
         var _loc1_:int = -1;
         if(this.§?!$§.§4"-§)
         {
            _loc1_ = this.§?!$§.§4"-§.§-"w§(§!!K§.§7!;§);
         }
         if(_loc1_ >= 0)
         {
            return Math.max(this.§]t§,§%J§);
         }
         return this.§]t§;
      }
      
      public function §9!s§(param1:int) : void
      {
         this.§]t§ = param1;
         dispatchEvent(new §&"J§(§&"J§.§6,§,this.energy));
      }
      
      public function §=P§(param1:int) : Boolean
      {
         this.§]t§ += param1;
         dispatchEvent(new §&"J§(§&"J§.§!!+§,this.energy));
         return true;
      }
      
      public function §8!@§(param1:int) : Boolean
      {
         this.§]t§ -= param1;
         dispatchEvent(new §&"J§(§&"J§.§>z§,this.energy));
         return true;
      }
      
      public function get §-=§() : int
      {
         return Math.max(0,(this.§2"R§ - getTimer()) / 1000);
      }
      
      public function get §#!J§() : Number
      {
         return this.§2"R§;
      }
      
      public function update(param1:int, param2:int, param3:int, param4:int, param5:Boolean = false) : void
      {
         this.§]!+§ = param2;
         this.§2"R§ = getTimer() + (param2 - param3) * 1000;
         this.§="V§ = param4;
         this.§9!s§(param1);
      }
      
      private function §^!<§(param1:Event) : void
      {
         if(this.§]t§ >= this.§>@§)
         {
            return;
         }
         var _loc2_:int = getTimer();
         var _loc3_:Number = this.§2"R§ - _loc2_;
         if(_loc3_ <= 0)
         {
            this.§2"R§ = this.§]!+§ * 1000 + _loc3_ + _loc2_;
            this.§=P§(1);
            §throw§(§4"#§.singleton).§?"T§.§2!E§();
            dispatchEvent(new §&"J§(§&"J§.§6,§,this.energy));
         }
      }
      
      public function get §&!3§() : Boolean
      {
         return §7"1§(§4"#§.singleton.dataModel).§4"-§.§-"w§(§!!K§.§7!;§) >= 0;
      }
      
      public function clone() : §,!c§
      {
         return new §,!c§(this.energy,this.§8"C§,this.§8"C§ - this.§-=§,this.§>@§,this.§?!$§);
      }
      
      public function dispose() : void
      {
         this.§`"=§.removeEventListener(Event.ENTER_FRAME,this.§^!<§);
         this.§`"=§ = null;
      }
   }
}
