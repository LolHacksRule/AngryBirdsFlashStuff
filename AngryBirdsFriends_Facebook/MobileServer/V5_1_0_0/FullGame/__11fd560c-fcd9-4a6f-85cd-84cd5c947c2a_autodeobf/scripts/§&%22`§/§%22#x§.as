package §&"`§
{
   public class §"#x§
   {
       
      
      private var mId:String;
      
      private var §2#e§:Vector.<§##P§>;
      
      private var §;!T§:Boolean;
      
      private var §<#+§:String;
      
      private var §+#x§:String;
      
      public function §"#x§(param1:String, param2:Array, param3:Boolean = false, param4:String = "", param5:String = "")
      {
         var _loc6_:Object = null;
         super();
         this.mId = param1;
         this.§;!T§ = param3;
         this.§<#+§ = param4;
         this.§2#e§ = new Vector.<§##P§>();
         this.§+#x§ = param5;
         for each(_loc6_ in param2)
         {
            this.§2#e§.push(§##P§.§?"=§(_loc6_));
         }
      }
      
      public function get hidden() : Boolean
      {
         return this.§;!T§;
      }
      
      public function §?" §() : int
      {
         return this.§2#e§.length;
      }
      
      public function getPricePoint(param1:int) : §##P§
      {
         if(param1 < this.§2#e§.length)
         {
            return this.§2#e§[param1];
         }
         return null;
      }
      
      private function get §2#d§() : Vector.<§##P§>
      {
         return this.§2#e§;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get currencyID() : String
      {
         return this.§<#+§;
      }
      
      public function get ogo() : String
      {
         return this.§+#x§;
      }
      
      public function set ogo(param1:String) : void
      {
         this.§+#x§ = param1;
      }
      
      public function get isOnSale() : Boolean
      {
         var _loc1_:§##P§ = null;
         for each(_loc1_ in this.§2#e§)
         {
            if(_loc1_.campaignPrice > 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public function get §^!v§() : Boolean
      {
         var _loc1_:§##P§ = null;
         for each(_loc1_ in this.§2#e§)
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
