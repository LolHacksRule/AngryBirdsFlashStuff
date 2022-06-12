package §@R§
{
   public class §13§ implements §6`§
   {
       
      
      private var §?X§:Array;
      
      private var §7!O§:Boolean;
      
      public function §13§()
      {
         this.§?X§ = [];
         super();
      }
      
      public function §<!C§(param1:§8y§) : void
      {
         this.§?X§.push(param1);
         this.§7!O§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§8y§ = null;
         for each(_loc1_ in this.§?X§)
         {
            _loc1_.dispose();
         }
         this.§?X§ = [];
      }
      
      public function §?]§(param1:String) : §]1§
      {
         var _loc2_:§]1§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§?X§.length)
         {
            _loc2_ = (this.§?X§[_loc3_] as §8y§).§?]§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §,!a§() : int
      {
         return this.§?X§.length;
      }
      
      public function §8'§(param1:int) : §8y§
      {
         if(param1 < 0 || param1 >= this.§,!a§)
         {
            return null;
         }
         if(!this.§7!O§)
         {
            this.§?X§.sortOn("name");
            this.§7!O§ = true;
         }
         return this.§?X§[param1];
      }
   }
}
