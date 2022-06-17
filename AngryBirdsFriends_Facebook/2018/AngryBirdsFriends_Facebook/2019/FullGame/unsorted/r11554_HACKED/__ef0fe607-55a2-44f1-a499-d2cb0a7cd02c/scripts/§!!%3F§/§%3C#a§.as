package §!!?§
{
   public class §<#a§
   {
       
      
      private var §^$+§:int;
      
      private var §7!1§:int;
      
      private var §]f§:Number;
      
      private var §8#V§:Number;
      
      private var §]!g§:Number;
      
      private var §^!>§:int;
      
      private var §^#%§:Number;
      
      private var §8#[§:Boolean;
      
      private var §7O§:Boolean;
      
      private var § !X§:Boolean;
      
      private var §""!§:Boolean;
      
      private var §<!J§:Boolean;
      
      public function §<#a§(param1:int, param2:int, param3:Number, param4:Number = 0, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false)
      {
         super();
         this.§^$+§ = param1;
         this.§7!1§ = param2;
         this.§]f§ = param3;
         this.§8#V§ = param3;
         this.§]!g§ = param4;
         if(this.§]!g§ > 0)
         {
            this.§^!>§ = 100 - this.§]!g§ / this.§]f§ * 100;
         }
         else
         {
            this.§^!>§ = 0;
         }
         this.§^#%§ = param5;
         this.§8#[§ = param7;
         this.§""!§ = param6;
         this.§7O§ = param8;
         this.§ !X§ = param9;
         this.§<!J§ = false;
      }
      
      public static function §,!+§(param1:Object) : §<#a§
      {
         return new §<#a§(param1.tq,param1.fa,Number(param1.p),Number(param1.cp),Number(param1.st),param1.r,param1.so,param1.po,param1.bv);
      }
      
      public function get totalQuantity() : int
      {
         return this.§^$+§;
      }
      
      public function get §;2§() : int
      {
         return this.§7!1§;
      }
      
      public function freeQuantityAsPercentage() : String
      {
         return Math.round(this.§7!1§ / this.§^$+§ * 100).toString() + "%";
      }
      
      public function freeQuantityInPercentage() : Number
      {
         return Math.round(this.§7!1§ / this.§^$+§ * 100);
      }
      
      public function get price() : Number
      {
         return this.§]f§;
      }
      
      public function set price(param1:Number) : void
      {
         this.§]f§ = param1;
      }
      
      public function get §@"E§() : Number
      {
         return this.§8#V§;
      }
      
      public function set §@"E§(param1:Number) : void
      {
         this.§8#V§ = param1;
      }
      
      public function get campaignPrice() : Number
      {
         return Math.round(this.§]!g§ * 100) / 100;
      }
      
      public function get campaignSalePercentage() : int
      {
         return this.§^!>§;
      }
      
      public function §=!Y§() : void
      {
         this.§8#V§ = this.§]f§;
      }
      
      public function get §@!4§() : Number
      {
         return this.§^#%§;
      }
      
      public function get needsReloadAfterPurchase() : Boolean
      {
         return this.§""!§;
      }
      
      public function get specialOffer() : Boolean
      {
         return this.§8#[§;
      }
      
      public function get popular() : Boolean
      {
         return this.§7O§;
      }
      
      public function get bestValue() : Boolean
      {
         return this.§ !X§;
      }
      
      public function get isNew() : Boolean
      {
         return this.§<!J§;
      }
   }
}
