package §4#l§
{
   public class §>"`§
   {
       
      
      private var §%C§:int;
      
      private var §7#<§:int;
      
      private var §7>§:Number;
      
      private var §,i§:Number;
      
      private var §`M§:Number;
      
      private var §9#p§:int;
      
      private var §="Y§:Number;
      
      private var §0">§:Boolean;
      
      private var § $7§:Boolean;
      
      private var §-#D§:Boolean;
      
      private var §=# §:Boolean;
      
      private var §!#2§:Boolean;
      
      public function §>"`§(param1:int, param2:int, param3:Number, param4:Number = 0, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false)
      {
         super();
         this.§%C§ = param1;
         this.§7#<§ = param2;
         this.§7>§ = param3;
         this.§,i§ = param3;
         this.§`M§ = param4;
         if(this.§`M§ > 0)
         {
            this.§9#p§ = 100 - this.§`M§ / this.§7>§ * 100;
         }
         else
         {
            this.§9#p§ = 0;
         }
         this.§="Y§ = param5;
         this.§0">§ = param7;
         this.§=# § = param6;
         this.§ $7§ = param8;
         this.§-#D§ = param9;
         this.§!#2§ = false;
      }
      
      public static function §%#M§(param1:Object) : §>"`§
      {
         return new §>"`§(param1.tq,param1.fa,Number(param1.p),Number(param1.cp),Number(param1.st),param1.r,param1.so,param1.po,param1.bv);
      }
      
      public function get totalQuantity() : int
      {
         return this.§%C§;
      }
      
      public function get §%"X§() : int
      {
         return this.§7#<§;
      }
      
      public function freeQuantityAsPercentage() : String
      {
         return Math.round(this.§7#<§ / this.§%C§ * 100).toString() + "%";
      }
      
      public function freeQuantityInPercentage() : Number
      {
         return Math.round(this.§7#<§ / this.§%C§ * 100);
      }
      
      public function get price() : Number
      {
         return this.§7>§;
      }
      
      public function set price(param1:Number) : void
      {
         this.§7>§ = param1;
      }
      
      public function get §5<§() : Number
      {
         return this.§,i§;
      }
      
      public function set §5<§(param1:Number) : void
      {
         this.§,i§ = param1;
      }
      
      public function get campaignPrice() : Number
      {
         return Math.round(this.§`M§ * 100) / 100;
      }
      
      public function get campaignSalePercentage() : int
      {
         return this.§9#p§;
      }
      
      public function §&$+§() : void
      {
         this.§,i§ = this.§7>§;
      }
      
      public function get §="z§() : Number
      {
         return this.§="Y§;
      }
      
      public function get needsReloadAfterPurchase() : Boolean
      {
         return this.§=# §;
      }
      
      public function get specialOffer() : Boolean
      {
         return this.§0">§;
      }
      
      public function get popular() : Boolean
      {
         return this.§ $7§;
      }
      
      public function get bestValue() : Boolean
      {
         return this.§-#D§;
      }
      
      public function get isNew() : Boolean
      {
         return this.§!#2§;
      }
   }
}
