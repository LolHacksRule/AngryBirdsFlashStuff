package §"!U§
{
   public class §=#V§
   {
       
      
      private var mId:String;
      
      private var §`F§:Vector.<§6!J§>;
      
      private var §"N§:Boolean;
      
      private var §-[§:String;
      
      private var §2#K§:String;
      
      public function §=#V§(param1:String, param2:Array, param3:Boolean = false, param4:String = "", param5:String = "")
      {
         var _loc6_:Object = null;
         super();
         this.mId = param1;
         this.§"N§ = param3;
         this.§-[§ = param4;
         this.§`F§ = new Vector.<§6!J§>();
         this.§2#K§ = param5;
         for each(_loc6_ in param2)
         {
            this.§`F§.push(§6!J§.§"!Y§(_loc6_));
         }
      }
      
      public function get hidden() : Boolean
      {
         return this.§"N§;
      }
      
      public function §-!6§() : int
      {
         return this.§`F§.length;
      }
      
      public function getPricePoint(param1:int) : §6!J§
      {
         if(param1 < this.§`F§.length)
         {
            return this.§`F§[param1];
         }
         return null;
      }
      
      private function get §&#'§() : Vector.<§6!J§>
      {
         return this.§`F§;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get currencyID() : String
      {
         return this.§-[§;
      }
      
      public function get ogo() : String
      {
         return this.§2#K§;
      }
      
      public function set ogo(param1:String) : void
      {
         this.§2#K§ = param1;
      }
      
      public function get isOnSale() : Boolean
      {
         var _loc1_:§6!J§ = null;
         for each(_loc1_ in this.§`F§)
         {
            if(_loc1_.campaignPrice > 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public function get §+!q§() : Boolean
      {
         var _loc1_:§6!J§ = null;
         for each(_loc1_ in this.§`F§)
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
