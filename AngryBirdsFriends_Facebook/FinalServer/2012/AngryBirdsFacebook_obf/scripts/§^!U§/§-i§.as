package §^!U§
{
   import §%!'§.§%!=§;
   import flash.events.EventDispatcher;
   
   public class §-i§ extends EventDispatcher
   {
       
      
      protected var § S§:String;
      
      protected var §7!e§:Number;
      
      protected var §?2§:Number;
      
      protected var §+;§:Number;
      
      public function §-i§(param1:Object)
      {
         super();
         if(param1)
         {
            this.§ S§ = param1.user_currency;
            this.§7!e§ = param1.currency_exchange;
            this.§?2§ = param1.currency_exchange_inverse;
            this.§+;§ = param1.currency_offset;
         }
      }
      
      public function §#0§(param1:Number) : Number
      {
         return Number(param1 * this.§?2§);
      }
      
      public function §`!T§(param1:Number, param2:Boolean = true, param3:String = "") : String
      {
         var _loc4_:String = this.§#0§(param1).toFixed(this.§=!?§());
         var _loc5_:String = §%!=§.§?W§(this.§ S§);
         return !!param2 ? _loc5_ + param3 + _loc4_.toString() : _loc4_.toString() + param3 + _loc5_;
      }
      
      protected function §=!?§() : int
      {
         var _loc1_:int = this.§+;§.toString().length - 1;
         return _loc1_ < 0 ? 0 : int(_loc1_);
      }
   }
}
