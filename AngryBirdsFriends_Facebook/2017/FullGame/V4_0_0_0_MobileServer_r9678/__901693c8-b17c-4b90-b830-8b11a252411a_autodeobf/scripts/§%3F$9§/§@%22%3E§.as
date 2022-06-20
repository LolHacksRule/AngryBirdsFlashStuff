package §?$9§
{
   public class §@">§ implements §5!T§
   {
       
      
      private var §;!p§:String;
      
      private var §@"S§:Array;
      
      private var §##>§:Boolean;
      
      public function §@">§(param1:String)
      {
         this.§@"S§ = [];
         super();
         this.§;!p§ = param1;
      }
      
      public function get name() : String
      {
         return this.§;!p§;
      }
      
      protected function §8Y§(param1:String) : §7"H§
      {
         var _loc2_:§7"H§ = null;
         for each(_loc2_ in this.§@"S§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §@#&§(param1:§7"H§) : void
      {
         if(this.§8Y§(param1.name))
         {
            param1.dispose();
            return;
         }
         this.§@"S§.push(param1);
         this.§##>§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§7"H§ = null;
         for each(_loc1_ in this.§@"S§)
         {
            _loc1_.dispose();
         }
         this.§@"S§ = [];
      }
      
      public function §6"_§(param1:String) : §3#z§
      {
         var _loc2_:§3#z§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§@"S§.length)
         {
            _loc2_ = (this.§@"S§[_loc3_] as §7"H§).§6"_§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §8"_§() : int
      {
         return this.§@"S§.length;
      }
      
      public function §?"q§(param1:int) : §7"H§
      {
         if(param1 < 0 || param1 >= this.§8"_§)
         {
            return null;
         }
         if(!this.§##>§)
         {
            this.§@"S§.sortOn("name");
            this.§##>§ = true;
         }
         return this.§@"S§[param1];
      }
   }
}
