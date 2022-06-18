package §4#l§
{
   public class §8#E§
   {
       
      
      private var mId:String;
      
      private var §"!?§:Vector.<§>"`§>;
      
      private var §2#@§:Boolean;
      
      private var §6#>§:String;
      
      private var §-"_§:String;
      
      public function §8#E§(param1:String, param2:Array, param3:Boolean = false, param4:String = "", param5:String = "")
      {
         var _loc6_:Object = null;
         super();
         this.mId = param1;
         this.§2#@§ = param3;
         this.§6#>§ = param4;
         this.§"!?§ = new Vector.<§>"`§>();
         this.§-"_§ = param5;
         for each(_loc6_ in param2)
         {
            this.§"!?§.push(§>"`§.§%#M§(_loc6_));
         }
      }
      
      public function get hidden() : Boolean
      {
         return this.§2#@§;
      }
      
      public function §+!2§() : int
      {
         return this.§"!?§.length;
      }
      
      public function getPricePoint(param1:int) : §>"`§
      {
         if(param1 < this.§"!?§.length)
         {
            return this.§"!?§[param1];
         }
         return null;
      }
      
      private function get §6!V§() : Vector.<§>"`§>
      {
         return this.§"!?§;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get currencyID() : String
      {
         return this.§6#>§;
      }
      
      public function get ogo() : String
      {
         return this.§-"_§;
      }
      
      public function set ogo(param1:String) : void
      {
         this.§-"_§ = param1;
      }
      
      public function get isOnSale() : Boolean
      {
         var _loc1_:§>"`§ = null;
         for each(_loc1_ in this.§"!?§)
         {
            if(_loc1_.campaignPrice > 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public function get §3i§() : Boolean
      {
         var _loc1_:§>"`§ = null;
         for each(_loc1_ in this.§"!?§)
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
