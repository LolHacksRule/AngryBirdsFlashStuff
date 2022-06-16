package §&"`§
{
   public class §##P§
   {
       
      
      private var §<!B§:int;
      
      private var §5"'§:int;
      
      private var §-#,§:Number;
      
      private var §9#"§:Number;
      
      private var §0!6§:Number;
      
      private var §##G§:int;
      
      private var §`#r§:Number;
      
      private var §!"^§:Boolean;
      
      private var §6$7§:Boolean;
      
      private var §4"X§:Boolean;
      
      private var §>!w§:Boolean;
      
      private var §;#&§:Boolean;
      
      public function §##P§(param1:int, param2:int, param3:Number, param4:Number = 0, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false)
      {
         super();
         this.§<!B§ = param1;
         this.§5"'§ = param2;
         this.§-#,§ = param3;
         this.§9#"§ = param3;
         this.§0!6§ = param4;
         if(this.§0!6§ > 0)
         {
            this.§##G§ = 100 - this.§0!6§ / this.§-#,§ * 100;
         }
         else
         {
            this.§##G§ = 0;
         }
         this.§`#r§ = param5;
         this.§!"^§ = param7;
         this.§>!w§ = param6;
         this.§6$7§ = param8;
         this.§4"X§ = param9;
         this.§;#&§ = false;
      }
      
      public static function §?"=§(param1:Object) : §##P§
      {
         return new §##P§(param1.tq,param1.fa,Number(param1.p),Number(param1.cp),Number(param1.st),param1.r,param1.so,param1.po,param1.bv);
      }
      
      public function get totalQuantity() : int
      {
         return this.§<!B§;
      }
      
      public function get §&!m§() : int
      {
         return this.§5"'§;
      }
      
      public function freeQuantityAsPercentage() : String
      {
         return Math.round(this.§5"'§ / this.§<!B§ * 100).toString() + "%";
      }
      
      public function freeQuantityInPercentage() : Number
      {
         return Math.round(this.§5"'§ / this.§<!B§ * 100);
      }
      
      public function get price() : Number
      {
         return this.§-#,§;
      }
      
      public function set price(param1:Number) : void
      {
         this.§-#,§ = param1;
      }
      
      public function get §!"g§() : Number
      {
         return this.§9#"§;
      }
      
      public function set §!"g§(param1:Number) : void
      {
         this.§9#"§ = param1;
      }
      
      public function get campaignPrice() : Number
      {
         return Math.round(this.§0!6§ * 100) / 100;
      }
      
      public function get campaignSalePercentage() : int
      {
         return this.§##G§;
      }
      
      public function §9!2§() : void
      {
         this.§9#"§ = this.§-#,§;
      }
      
      public function get §!$<§() : Number
      {
         return this.§`#r§;
      }
      
      public function get needsReloadAfterPurchase() : Boolean
      {
         return this.§>!w§;
      }
      
      public function get specialOffer() : Boolean
      {
         return this.§!"^§;
      }
      
      public function get popular() : Boolean
      {
         return this.§6$7§;
      }
      
      public function get bestValue() : Boolean
      {
         return this.§4"X§;
      }
      
      public function get isNew() : Boolean
      {
         return this.§;#&§;
      }
   }
}
