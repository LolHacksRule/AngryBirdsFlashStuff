package §`D§
{
   public class §'"j§
   {
       
      
      private var §1"e§:int;
      
      private var §<"7§:int;
      
      private var §#"j§:Number;
      
      private var §6#H§:Number;
      
      private var §5#,§:Number;
      
      private var §+!&§:int;
      
      private var §;!m§:Number;
      
      private var §##e§:Boolean;
      
      private var §8"f§:Boolean;
      
      private var §0T§:Boolean;
      
      private var §%!#§:Boolean;
      
      private var §=#i§:Boolean;
      
      public function §'"j§(param1:int, param2:int, param3:Number, param4:Number = 0, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false)
      {
         super();
         this.§1"e§ = param1;
         this.§<"7§ = param2;
         this.§#"j§ = param3;
         this.§6#H§ = param3;
         this.§5#,§ = param4;
         if(this.§5#,§ > 0)
         {
            this.§+!&§ = 100 - this.§5#,§ / this.§#"j§ * 100;
         }
         else
         {
            this.§+!&§ = 0;
         }
         this.§;!m§ = param5;
         this.§##e§ = param7;
         this.§%!#§ = param6;
         this.§8"f§ = param8;
         this.§0T§ = param9;
         this.§=#i§ = false;
      }
      
      public static function §4G§(param1:Object) : §'"j§
      {
         return new §'"j§(param1.tq,param1.fa,Number(param1.p),Number(param1.cp),Number(param1.st),param1.r,param1.so,param1.po,param1.bv);
      }
      
      public function get totalQuantity() : int
      {
         return this.§1"e§;
      }
      
      public function get §+"l§() : int
      {
         return this.§<"7§;
      }
      
      public function freeQuantityAsPercentage() : String
      {
         return Math.round(this.§<"7§ / this.§1"e§ * 100).toString() + "%";
      }
      
      public function freeQuantityInPercentage() : Number
      {
         return Math.round(this.§<"7§ / this.§1"e§ * 100);
      }
      
      public function get price() : Number
      {
         return this.§#"j§;
      }
      
      public function set price(param1:Number) : void
      {
         this.§#"j§ = param1;
      }
      
      public function get § !C§() : Number
      {
         return this.§6#H§;
      }
      
      public function set § !C§(param1:Number) : void
      {
         this.§6#H§ = param1;
      }
      
      public function get campaignPrice() : Number
      {
         return Math.round(this.§5#,§ * 100) / 100;
      }
      
      public function get campaignSalePercentage() : int
      {
         return this.§+!&§;
      }
      
      public function §4j§() : void
      {
         this.§6#H§ = this.§#"j§;
      }
      
      public function get §^!^§() : Number
      {
         return this.§;!m§;
      }
      
      public function get needsReloadAfterPurchase() : Boolean
      {
         return this.§%!#§;
      }
      
      public function get specialOffer() : Boolean
      {
         return this.§##e§;
      }
      
      public function get popular() : Boolean
      {
         return this.§8"f§;
      }
      
      public function get bestValue() : Boolean
      {
         return this.§0T§;
      }
      
      public function get isNew() : Boolean
      {
         return this.§=#i§;
      }
   }
}
