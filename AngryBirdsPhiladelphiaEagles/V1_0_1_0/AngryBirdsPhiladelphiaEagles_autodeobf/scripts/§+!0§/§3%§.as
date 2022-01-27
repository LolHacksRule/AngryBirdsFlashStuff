package §+!0§
{
   public class §3%§ implements §8l§
   {
       
      
      private var §?A§:Array;
      
      private var §0u§:Boolean;
      
      public function §3%§()
      {
         this.§?A§ = [];
         super();
      }
      
      public function §+,§(param1:§=j§) : void
      {
         this.§?A§.push(param1);
         this.§0u§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§=j§ = null;
         for each(_loc1_ in this.§?A§)
         {
            _loc1_.dispose();
         }
         this.§?A§ = [];
      }
      
      public function §'9§(param1:String) : §#N§
      {
         var _loc2_:§#N§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§?A§.length)
         {
            _loc2_ = (this.§?A§[_loc3_] as §=j§).§'9§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §=!,§() : int
      {
         return this.§?A§.length;
      }
      
      public function §#K§(param1:int) : §=j§
      {
         if(param1 < 0 || param1 >= this.§=!,§)
         {
            return null;
         }
         if(!this.§0u§)
         {
            this.§?A§.sortOn("name");
            this.§0u§ = true;
         }
         return this.§?A§[param1];
      }
   }
}
