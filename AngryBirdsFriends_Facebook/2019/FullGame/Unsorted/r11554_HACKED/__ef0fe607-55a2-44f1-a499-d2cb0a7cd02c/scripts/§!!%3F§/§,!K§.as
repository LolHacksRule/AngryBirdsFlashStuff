package §!!?§
{
   public class §,!K§
   {
       
      
      private var mId:String;
      
      private var §&!E§:Vector.<§<#a§>;
      
      private var §9e§:Boolean;
      
      private var §+0§:String;
      
      private var §?y§:String;
      
      public function §,!K§(param1:String, param2:Array, param3:Boolean = false, param4:String = "", param5:String = "")
      {
         var _loc6_:Object = null;
         super();
         this.mId = param1;
         this.§9e§ = param3;
         this.§+0§ = param4;
         this.§&!E§ = new Vector.<§<#a§>();
         this.§?y§ = param5;
         for each(_loc6_ in param2)
         {
            this.§&!E§.push(§<#a§.§,!+§(_loc6_));
         }
      }
      
      public function get hidden() : Boolean
      {
         return this.§9e§;
      }
      
      public function §&R§() : int
      {
         return this.§&!E§.length;
      }
      
      public function getPricePoint(param1:int) : §<#a§
      {
         if(param1 < this.§&!E§.length)
         {
            return this.§&!E§[param1];
         }
         return null;
      }
      
      private function get §7"i§() : Vector.<§<#a§>
      {
         return this.§&!E§;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get currencyID() : String
      {
         return this.§+0§;
      }
      
      public function get ogo() : String
      {
         return this.§?y§;
      }
      
      public function set ogo(param1:String) : void
      {
         this.§?y§ = param1;
      }
      
      public function get isOnSale() : Boolean
      {
         var _loc1_:§<#a§ = null;
         for each(_loc1_ in this.§&!E§)
         {
            if(_loc1_.campaignPrice > 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public function get §%!k§() : Boolean
      {
         var _loc1_:§<#a§ = null;
         for each(_loc1_ in this.§&!E§)
         {
            if(_loc1_.specialOffer)
            {
               return true;
            }
         }
         return false;
      }
   }
}
