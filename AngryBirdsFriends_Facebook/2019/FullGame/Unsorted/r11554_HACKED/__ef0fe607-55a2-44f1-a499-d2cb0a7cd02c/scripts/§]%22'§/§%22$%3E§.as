package §]"'§
{
   import §+#B§.§#§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §"$>§ extends EventDispatcher
   {
       
      
      protected var §&"2§:String;
      
      protected var §;#l§:Number;
      
      protected var §;U§:Number;
      
      protected var §6##§:Number;
      
      protected var §>o§:Boolean;
      
      public function §"$>§(param1:Object = null)
      {
         super();
         if(param1)
         {
            this.§&"2§ = param1.user_currency;
            this.§;#l§ = param1.currency_exchange;
            this.§;U§ = param1.currency_exchange_inverse;
            this.§6##§ = param1.currency_offset;
         }
         else
         {
            this.§[#8§();
            this.§>o§ = true;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      public function get currencyID() : String
      {
         return this.§&"2§;
      }
      
      public function get §super§() : Number
      {
         return this.§;#l§;
      }
      
      public function get § #$§() : Boolean
      {
         return this.§>o§;
      }
      
      protected function §[#8§() : void
      {
         this.§&"2§ = "USD";
         this.§;#l§ = 10;
         this.§;U§ = 0.1;
         this.§6##§ = 100;
      }
      
      public function §+"d§(param1:Number) : Number
      {
         return Number(param1 * this.§;U§);
      }
      
      public function getPriceTag(param1:Number, param2:Boolean = true, param3:String = "", param4:String = "") : String
      {
         var _loc5_:String = param1.toFixed(2);
         var _loc6_:String = §##8§.§=#^§(param4);
         return !!param2 ? _loc6_ + param3 + _loc5_.toString() : _loc5_.toString() + param3 + _loc6_;
      }
      
      protected function §""b§() : int
      {
         var _loc1_:int = this.§6##§.toString().length - 1;
         return _loc1_ < 0 ? 0 : int(_loc1_);
      }
   }
}
