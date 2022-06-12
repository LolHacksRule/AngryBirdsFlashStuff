package §"!U§
{
   public class §6!J§
   {
       
      
      private var §?"=§:int;
      
      private var §false§:int;
      
      private var §#"Y§:Number;
      
      private var §?!&§:Number;
      
      private var §&!u§:Number;
      
      private var §8-§:int;
      
      private var §"-§:Number;
      
      private var §,P§:Boolean;
      
      private var §'!f§:Boolean;
      
      private var §?"'§:Boolean;
      
      private var §3!+§:Boolean;
      
      private var §<!F§:Boolean;
      
      public function §6!J§(param1:int, param2:int, param3:Number, param4:Number = 0, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false)
      {
         super();
         this.§?"=§ = param1;
         this.§false§ = param2;
         this.§#"Y§ = param3;
         this.§?!&§ = param3;
         this.§&!u§ = param4;
         if(this.§&!u§ > 0)
         {
            this.§8-§ = 100 - this.§&!u§ / this.§#"Y§ * 100;
         }
         else
         {
            this.§8-§ = 0;
         }
         this.§"-§ = param5;
         this.§,P§ = param7;
         this.§3!+§ = param6;
         this.§'!f§ = param8;
         this.§?"'§ = param9;
         this.§<!F§ = false;
      }
      
      public static function §"!Y§(param1:Object) : §6!J§
      {
         return new §6!J§(param1.tq,param1.fa,Number(param1.p),Number(param1.cp),Number(param1.st),param1.r,param1.so,param1.po,param1.bv);
      }
      
      public function get totalQuantity() : int
      {
         return this.§?"=§;
      }
      
      public function get §8=§() : int
      {
         return this.§false§;
      }
      
      public function freeQuantityAsPercentage() : String
      {
         return Math.round(this.§false§ / this.§?"=§ * 100).toString() + "%";
      }
      
      public function freeQuantityInPercentage() : Number
      {
         return Math.round(this.§false§ / this.§?"=§ * 100);
      }
      
      public function get price() : Number
      {
         return this.§#"Y§;
      }
      
      public function set price(param1:Number) : void
      {
         this.§#"Y§ = param1;
      }
      
      public function get § c§() : Number
      {
         return this.§?!&§;
      }
      
      public function set § c§(param1:Number) : void
      {
         this.§?!&§ = param1;
      }
      
      public function get campaignPrice() : Number
      {
         return Math.round(this.§&!u§ * 100) / 100;
      }
      
      public function get campaignSalePercentage() : int
      {
         return this.§8-§;
      }
      
      public function §<!q§() : void
      {
         this.§?!&§ = this.§#"Y§;
      }
      
      public function get §5!K§() : Number
      {
         return this.§"-§;
      }
      
      public function get needsReloadAfterPurchase() : Boolean
      {
         return this.§3!+§;
      }
      
      public function get specialOffer() : Boolean
      {
         return this.§,P§;
      }
      
      public function get popular() : Boolean
      {
         return this.§'!f§;
      }
      
      public function get bestValue() : Boolean
      {
         return this.§?"'§;
      }
      
      public function get isNew() : Boolean
      {
         return this.§<!F§;
      }
   }
}
