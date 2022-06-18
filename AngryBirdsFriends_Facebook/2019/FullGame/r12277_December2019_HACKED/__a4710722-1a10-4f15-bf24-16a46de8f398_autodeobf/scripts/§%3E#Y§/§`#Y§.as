package §>#Y§
{
   import §2E§.§2"_§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §`#Y§ extends EventDispatcher
   {
       
      
      protected var §&$&§:String;
      
      protected var §5Z§:Number;
      
      protected var §6$+§:Number;
      
      protected var §+#I§:Number;
      
      protected var §3a§:Boolean;
      
      public function §`#Y§(param1:Object = null)
      {
         super();
         if(param1)
         {
            this.§&$&§ = param1.user_currency;
            this.§5Z§ = param1.currency_exchange;
            this.§6$+§ = param1.currency_exchange_inverse;
            this.§+#I§ = param1.currency_offset;
         }
         else
         {
            this.§]"v§();
            this.§3a§ = true;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      public function get currencyID() : String
      {
         return this.§&$&§;
      }
      
      public function get §9"9§() : Number
      {
         return this.§5Z§;
      }
      
      public function get §+Y§() : Boolean
      {
         return this.§3a§;
      }
      
      protected function §]"v§() : void
      {
         this.§&$&§ = "USD";
         this.§5Z§ = 10;
         this.§6$+§ = 0.1;
         this.§+#I§ = 100;
      }
      
      public function §="!§(param1:Number) : Number
      {
         return Number(param1 * this.§6$+§);
      }
      
      public function getPriceTag(param1:Number, param2:Boolean = true, param3:String = "", param4:String = "") : String
      {
         var _loc5_:String = param1.toFixed(2);
         var _loc6_:String = §2"_§.§3!M§(param4);
         return !!param2 ? _loc6_ + param3 + _loc5_.toString() : _loc5_.toString() + param3 + _loc6_;
      }
      
      protected function §=!d§() : int
      {
         var _loc1_:int = this.§+#I§.toString().length - 1;
         return _loc1_ < 0 ? 0 : int(_loc1_);
      }
   }
}
