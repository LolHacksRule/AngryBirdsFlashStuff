package §8]§
{
   public class §,!_§ implements §^Q§
   {
       
      
      private var §7§:Array;
      
      private var §,!?§:Boolean;
      
      public function §,!_§()
      {
         this.§7§ = [];
         super();
      }
      
      public function §2!W§(param1:§@L§) : void
      {
         this.§7§.push(param1);
         this.§,!?§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§@L§ = null;
         for each(_loc1_ in this.§7§)
         {
            _loc1_.dispose();
         }
         this.§7§ = [];
      }
      
      public function §"?§(param1:String) : §`!`§
      {
         var _loc2_:§`!`§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§7§.length)
         {
            _loc2_ = (this.§7§[_loc3_] as §@L§).§"?§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §=N§() : int
      {
         return this.§7§.length;
      }
      
      public function §,!5§(param1:int) : §@L§
      {
         if(param1 < 0 || param1 >= this.§=N§)
         {
            return null;
         }
         if(!this.§,!?§)
         {
            this.§7§.sortOn("name");
            this.§,!?§ = true;
         }
         return this.§7§[param1];
      }
   }
}
