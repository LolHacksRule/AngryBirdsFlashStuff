package §,#,§
{
   import §#"4§.§8#Y§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §1!P§ extends EventDispatcher
   {
       
      
      protected var §%#A§:String;
      
      protected var §7"x§:Number;
      
      protected var §=!f§:Number;
      
      protected var §1"u§:Number;
      
      protected var §2"v§:Boolean;
      
      public function §1!P§(param1:Object = null)
      {
         super();
         if(param1)
         {
            this.§%#A§ = param1.user_currency;
            this.§7"x§ = param1.currency_exchange;
            this.§=!f§ = param1.currency_exchange_inverse;
            this.§1"u§ = param1.currency_offset;
         }
         else
         {
            this.§'!O§();
            this.§2"v§ = true;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      public function get currencyID() : String
      {
         return this.§%#A§;
      }
      
      public function get §!!'§() : Number
      {
         return this.§7"x§;
      }
      
      public function get §%!&§() : Boolean
      {
         return this.§2"v§;
      }
      
      protected function §'!O§() : void
      {
         this.§%#A§ = "USD";
         this.§7"x§ = 10;
         this.§=!f§ = 0.1;
         this.§1"u§ = 100;
      }
      
      public function §!!;§(param1:Number) : Number
      {
         return Number(param1 * this.§=!f§);
      }
      
      public function getPriceTag(param1:Number, param2:Boolean = true, param3:String = "", param4:String = "") : String
      {
         var _loc5_:String = param1.toFixed(2);
         var _loc6_:String = §8#Y§.§>!T§(param4);
         return !!param2 ? _loc6_ + param3 + _loc5_.toString() : _loc5_.toString() + param3 + _loc6_;
      }
      
      protected function §>#8§() : int
      {
         var _loc1_:int = this.§1"u§.toString().length - 1;
         return _loc1_ < 0 ? 0 : int(_loc1_);
      }
   }
}
