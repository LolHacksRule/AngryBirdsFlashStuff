package §5" §
{
   public class §=n§
   {
       
      
      private var mId:String;
      
      private var §!!p§:Vector.<§5u§>;
      
      private var §,"[§:Boolean;
      
      private var §>!T§:String;
      
      private var §-f§:String;
      
      public function §=n§(param1:String, param2:Array, param3:Boolean = false, param4:String = "", param5:String = "")
      {
         var _loc6_:Object = null;
         super();
         this.mId = param1;
         this.§,"[§ = param3;
         this.§>!T§ = param4;
         this.§!!p§ = new Vector.<§5u§>();
         this.§-f§ = param5;
         for each(_loc6_ in param2)
         {
            this.§!!p§.push(§5u§.§^$B§(_loc6_));
         }
      }
      
      public function get hidden() : Boolean
      {
         return this.§,"[§;
      }
      
      public function §^#G§() : int
      {
         return this.§!!p§.length;
      }
      
      public function getPricePoint(param1:int) : §5u§
      {
         if(param1 < this.§!!p§.length)
         {
            return this.§!!p§[param1];
         }
         return null;
      }
      
      private function get §""&§() : Vector.<§5u§>
      {
         return this.§!!p§;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get currencyID() : String
      {
         return this.§>!T§;
      }
      
      public function get ogo() : String
      {
         return this.§-f§;
      }
      
      public function set ogo(param1:String) : void
      {
         this.§-f§ = param1;
      }
      
      public function get isOnSale() : Boolean
      {
         var _loc1_:§5u§ = null;
         for each(_loc1_ in this.§!!p§)
         {
            if(_loc1_.campaignPrice > 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public function get §]#l§() : Boolean
      {
         var _loc1_:§5u§ = null;
         for each(_loc1_ in this.§!!p§)
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
