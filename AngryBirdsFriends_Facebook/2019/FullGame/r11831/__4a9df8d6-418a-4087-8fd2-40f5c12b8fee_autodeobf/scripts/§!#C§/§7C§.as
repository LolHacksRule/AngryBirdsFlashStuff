package §!#C§
{
   import §&!_§.§3#v§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §7C§ extends EventDispatcher
   {
       
      
      protected var §1H§:String;
      
      protected var §'!f§:Number;
      
      protected var §##V§:Number;
      
      protected var §?$-§:Number;
      
      protected var §!$5§:Boolean;
      
      public function §7C§(param1:Object = null)
      {
         super();
         if(param1)
         {
            this.§1H§ = param1.user_currency;
            this.§'!f§ = param1.currency_exchange;
            this.§##V§ = param1.currency_exchange_inverse;
            this.§?$-§ = param1.currency_offset;
         }
         else
         {
            this.§`$-§();
            this.§!$5§ = true;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      public function get currencyID() : String
      {
         return this.§1H§;
      }
      
      public function get §9"P§() : Number
      {
         return this.§'!f§;
      }
      
      public function get §3f§() : Boolean
      {
         return this.§!$5§;
      }
      
      protected function §`$-§() : void
      {
         this.§1H§ = "USD";
         this.§'!f§ = 10;
         this.§##V§ = 0.1;
         this.§?$-§ = 100;
      }
      
      public function §9Q§(param1:Number) : Number
      {
         return Number(param1 * this.§##V§);
      }
      
      public function getPriceTag(param1:Number, param2:Boolean = true, param3:String = "", param4:String = "") : String
      {
         var _loc5_:String = param1.toFixed(2);
         var _loc6_:String = §3#v§.§4"f§(param4);
         return !!param2 ? _loc6_ + param3 + _loc5_.toString() : _loc5_.toString() + param3 + _loc6_;
      }
      
      protected function §81§() : int
      {
         var _loc1_:int = this.§?$-§.toString().length - 1;
         return _loc1_ < 0 ? 0 : int(_loc1_);
      }
   }
}
