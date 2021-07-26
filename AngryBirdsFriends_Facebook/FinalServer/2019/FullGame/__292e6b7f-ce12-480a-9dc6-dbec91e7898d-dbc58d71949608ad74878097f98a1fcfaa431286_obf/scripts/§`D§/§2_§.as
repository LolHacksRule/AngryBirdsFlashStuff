package §`D§
{
   public class §2_§
   {
       
      
      private var mId:String;
      
      private var §3Y§:Vector.<§'"j§>;
      
      private var §9#y§:Boolean;
      
      private var §]"'§:String;
      
      private var §6!`§:String;
      
      public function §2_§(param1:String, param2:Array, param3:Boolean = false, param4:String = "", param5:String = "")
      {
         var _loc6_:Object = null;
         super();
         this.mId = param1;
         this.§9#y§ = param3;
         this.§]"'§ = param4;
         this.§3Y§ = new Vector.<§'"j§>();
         this.§6!`§ = param5;
         for each(_loc6_ in param2)
         {
            this.§3Y§.push(§'"j§.§4G§(_loc6_));
         }
      }
      
      public function get hidden() : Boolean
      {
         return this.§9#y§;
      }
      
      public function §set §() : int
      {
         return this.§3Y§.length;
      }
      
      public function getPricePoint(param1:int) : §'"j§
      {
         if(param1 < this.§3Y§.length)
         {
            return this.§3Y§[param1];
         }
         return null;
      }
      
      private function get §#$3§() : Vector.<§'"j§>
      {
         return this.§3Y§;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get currencyID() : String
      {
         return this.§]"'§;
      }
      
      public function get ogo() : String
      {
         return this.§6!`§;
      }
      
      public function set ogo(param1:String) : void
      {
         this.§6!`§ = param1;
      }
      
      public function get isOnSale() : Boolean
      {
         var _loc1_:§'"j§ = null;
         for each(_loc1_ in this.§3Y§)
         {
            if(_loc1_.campaignPrice > 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public function get §2"f§() : Boolean
      {
         var _loc1_:§'"j§ = null;
         for each(_loc1_ in this.§3Y§)
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
