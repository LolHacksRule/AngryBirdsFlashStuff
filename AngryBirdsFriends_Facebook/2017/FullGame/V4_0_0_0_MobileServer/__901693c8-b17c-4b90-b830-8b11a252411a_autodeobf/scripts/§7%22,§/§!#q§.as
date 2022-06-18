package §7",§
{
   public class §!#q§
   {
       
      
      private var §7"c§:int;
      
      private var §?#M§:int;
      
      private var §<!a§:Number;
      
      private var §^f§:Number;
      
      private var §+Y§:Number;
      
      private var §<!d§:int;
      
      private var §+z§:Number;
      
      private var §>!"§:Boolean;
      
      private var §>E§:Boolean;
      
      private var §?"W§:Boolean;
      
      private var §4C§:Boolean;
      
      private var §1#T§:Boolean;
      
      public function §!#q§(param1:int, param2:int, param3:Number, param4:Number = 0, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false)
      {
         super();
         this.§7"c§ = param1;
         this.§?#M§ = param2;
         this.§<!a§ = param3;
         this.§^f§ = param3;
         this.§+Y§ = param4;
         if(this.§+Y§ > 0)
         {
            this.§<!d§ = 100 - this.§+Y§ / this.§<!a§ * 100;
         }
         else
         {
            this.§<!d§ = 0;
         }
         this.§+z§ = param5;
         this.§>!"§ = param7;
         this.§4C§ = param6;
         this.§>E§ = param8;
         this.§?"W§ = param9;
         this.§1#T§ = false;
      }
      
      public static function §6!?§(param1:Object) : §!#q§
      {
         return new §!#q§(param1.tq,param1.fa,Number(param1.p),Number(param1.cp),Number(param1.st),param1.r,param1.so,param1.po,param1.bv);
      }
      
      public function get totalQuantity() : int
      {
         return this.§7"c§;
      }
      
      public function get §3y§() : int
      {
         return this.§?#M§;
      }
      
      public function freeQuantityAsPercentage() : String
      {
         return Math.round(this.§?#M§ / this.§7"c§ * 100).toString() + "%";
      }
      
      public function freeQuantityInPercentage() : Number
      {
         return Math.round(this.§?#M§ / this.§7"c§ * 100);
      }
      
      public function get price() : Number
      {
         return this.§<!a§;
      }
      
      public function set price(param1:Number) : void
      {
         this.§<!a§ = param1;
      }
      
      public function get §&>§() : Number
      {
         return this.§^f§;
      }
      
      public function set §&>§(param1:Number) : void
      {
         this.§^f§ = param1;
      }
      
      public function get campaignPrice() : Number
      {
         return Math.round(this.§+Y§ * 100) / 100;
      }
      
      public function get campaignSalePercentage() : int
      {
         return this.§<!d§;
      }
      
      public function §9#L§() : void
      {
         this.§^f§ = this.§<!a§;
      }
      
      public function get §[!h§() : Number
      {
         return this.§+z§;
      }
      
      public function get needsReloadAfterPurchase() : Boolean
      {
         return this.§4C§;
      }
      
      public function get specialOffer() : Boolean
      {
         return this.§>!"§;
      }
      
      public function get popular() : Boolean
      {
         return this.§>E§;
      }
      
      public function get bestValue() : Boolean
      {
         return this.§?"W§;
      }
      
      public function get isNew() : Boolean
      {
         return this.§1#T§;
      }
   }
}
