package §3$"§
{
   import §'!L§.§-$?§;
   import §'!L§.§8"y§;
   import §@0§.§%!q§;
   
   public class §@# §
   {
       
      
      private var §&#S§:Vector.<§`"k§>;
      
      public function §@# §(param1:§%!q§)
      {
         var _loc2_:§`"k§ = null;
         super();
         this.§&#S§ = §<#[§.§,#V§();
         for each(_loc2_ in this.§&#S§)
         {
            _loc2_.initialize(param1);
         }
      }
      
      public function §5"P§(param1:String, param2:String) : void
      {
         var _loc3_:§`"k§ = null;
         for each(_loc3_ in this.§&#S§)
         {
            if(_loc3_.§?!k§(param2))
            {
               _loc3_.§5"P§(param1,param2);
            }
         }
      }
      
      public function §>$#§() : Array
      {
         var _loc1_:Array = [];
         var _loc2_:int = 0;
         while(_loc2_ < this.§&#S§.length)
         {
            _loc1_.push(this.§&#S§[_loc2_]);
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function update(param1:int) : void
      {
         var _loc2_:§`"k§ = null;
         for each(_loc2_ in this.§&#S§)
         {
            _loc2_.update(param1);
         }
      }
      
      public function §1"Z§(param1:String, param2:String, param3:§8"y§) : Boolean
      {
         var _loc4_:§`"k§ = null;
         for each(_loc4_ in this.§&#S§)
         {
            if(_loc4_.§?!k§(param1))
            {
               param3.§4l§(_loc4_ as §-$?§,param2);
               return true;
            }
         }
         return false;
      }
      
      public function clear() : void
      {
         var _loc1_:§`"k§ = null;
         for each(_loc1_ in this.§&#S§)
         {
            _loc1_.clear();
         }
      }
   }
}
