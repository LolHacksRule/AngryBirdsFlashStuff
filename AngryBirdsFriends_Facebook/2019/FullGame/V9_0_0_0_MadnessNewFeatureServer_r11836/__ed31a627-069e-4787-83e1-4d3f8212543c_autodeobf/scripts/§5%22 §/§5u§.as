package §5" §
{
   public class §5u§
   {
       
      
      private var §@#5§:int;
      
      private var §]!Y§:int;
      
      private var §0#h§:Number;
      
      private var §+"!§:Number;
      
      private var §7!"§:Number;
      
      private var § O§:int;
      
      private var §+$!§:Number;
      
      private var §^!V§:Boolean;
      
      private var §9!"§:Boolean;
      
      private var §>!@§:Boolean;
      
      private var §1t§:Boolean;
      
      private var §^"k§:Boolean;
      
      public function §5u§(param1:int, param2:int, param3:Number, param4:Number = 0, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false)
      {
         super();
         this.§@#5§ = param1;
         this.§]!Y§ = param2;
         this.§0#h§ = param3;
         this.§+"!§ = param3;
         this.§7!"§ = param4;
         if(this.§7!"§ > 0)
         {
            this.§ O§ = 100 - this.§7!"§ / this.§0#h§ * 100;
         }
         else
         {
            this.§ O§ = 0;
         }
         this.§+$!§ = param5;
         this.§^!V§ = param7;
         this.§1t§ = param6;
         this.§9!"§ = param8;
         this.§>!@§ = param9;
         this.§^"k§ = false;
      }
      
      public static function §^$B§(param1:Object) : §5u§
      {
         return new §5u§(param1.tq,param1.fa,Number(param1.p),Number(param1.cp),Number(param1.st),param1.r,param1.so,param1.po,param1.bv);
      }
      
      public function get totalQuantity() : int
      {
         return this.§@#5§;
      }
      
      public function get §^!B§() : int
      {
         return this.§]!Y§;
      }
      
      public function freeQuantityAsPercentage() : String
      {
         return Math.round(this.§]!Y§ / this.§@#5§ * 100).toString() + "%";
      }
      
      public function freeQuantityInPercentage() : Number
      {
         return Math.round(this.§]!Y§ / this.§@#5§ * 100);
      }
      
      public function get price() : Number
      {
         return this.§0#h§;
      }
      
      public function set price(param1:Number) : void
      {
         this.§0#h§ = param1;
      }
      
      public function get §"#P§() : Number
      {
         return this.§+"!§;
      }
      
      public function set §"#P§(param1:Number) : void
      {
         this.§+"!§ = param1;
      }
      
      public function get campaignPrice() : Number
      {
         return Math.round(this.§7!"§ * 100) / 100;
      }
      
      public function get campaignSalePercentage() : int
      {
         return this.§ O§;
      }
      
      public function §>0§() : void
      {
         this.§+"!§ = this.§0#h§;
      }
      
      public function get §8$8§() : Number
      {
         return this.§+$!§;
      }
      
      public function get needsReloadAfterPurchase() : Boolean
      {
         return this.§1t§;
      }
      
      public function get specialOffer() : Boolean
      {
         return this.§^!V§;
      }
      
      public function get popular() : Boolean
      {
         return this.§9!"§;
      }
      
      public function get bestValue() : Boolean
      {
         return this.§>!@§;
      }
      
      public function get isNew() : Boolean
      {
         return this.§^"k§;
      }
   }
}
