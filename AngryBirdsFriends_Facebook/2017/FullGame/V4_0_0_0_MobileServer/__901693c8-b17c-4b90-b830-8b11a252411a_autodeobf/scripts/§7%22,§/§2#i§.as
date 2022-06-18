package §7",§
{
   public class §2#i§
   {
       
      
      private var mId:String;
      
      private var §0X§:Vector.<§!#q§>;
      
      private var §?!"§:Boolean;
      
      private var §;"^§:String;
      
      private var §""n§:String;
      
      public function §2#i§(param1:String, param2:Array, param3:Boolean = false, param4:String = "", param5:String = "")
      {
         var _loc6_:Object = null;
         super();
         this.mId = param1;
         this.§?!"§ = param3;
         this.§;"^§ = param4;
         this.§0X§ = new Vector.<§!#q§>();
         this.§""n§ = param5;
         for each(_loc6_ in param2)
         {
            this.§0X§.push(§!#q§.§6!?§(_loc6_));
         }
      }
      
      public function get hidden() : Boolean
      {
         return this.§?!"§;
      }
      
      public function §]$4§() : int
      {
         return this.§0X§.length;
      }
      
      public function getPricePoint(param1:int) : §!#q§
      {
         if(param1 < this.§0X§.length)
         {
            return this.§0X§[param1];
         }
         return null;
      }
      
      private function get §]"%§() : Vector.<§!#q§>
      {
         return this.§0X§;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get currencyID() : String
      {
         return this.§;"^§;
      }
      
      public function get ogo() : String
      {
         return this.§""n§;
      }
      
      public function set ogo(param1:String) : void
      {
         this.§""n§ = param1;
      }
      
      public function get isOnSale() : Boolean
      {
         var _loc1_:§!#q§ = null;
         for each(_loc1_ in this.§0X§)
         {
            if(_loc1_.campaignPrice > 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public function get §`@§() : Boolean
      {
         var _loc1_:§!#q§ = null;
         for each(_loc1_ in this.§0X§)
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
