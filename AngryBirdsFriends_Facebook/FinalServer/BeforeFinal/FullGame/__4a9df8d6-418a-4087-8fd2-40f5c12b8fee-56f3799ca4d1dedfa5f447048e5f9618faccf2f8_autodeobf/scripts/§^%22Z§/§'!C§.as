package §^"Z§
{
   import §2!l§.§&y§;
   import §2!l§.§0"[§;
   import §>2§.§!6§;
   
   public class §'!C§
   {
       
      
      private var §8#9§:Vector.<§%w§>;
      
      public function §'!C§(param1:§!6§)
      {
         var _loc2_:§%w§ = null;
         super();
         this.§8#9§ = §'#3§.§4"q§();
         for each(_loc2_ in this.§8#9§)
         {
            _loc2_.initialize(param1);
         }
      }
      
      public function §5#2§(param1:String, param2:String) : void
      {
         var _loc3_:§%w§ = null;
         for each(_loc3_ in this.§8#9§)
         {
            if(_loc3_.§2#C§(param2))
            {
               _loc3_.§5#2§(param1,param2);
            }
         }
      }
      
      public function §;"z§() : Array
      {
         var _loc1_:Array = [];
         var _loc2_:int = 0;
         while(_loc2_ < this.§8#9§.length)
         {
            _loc1_.push(this.§8#9§[_loc2_]);
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function update(param1:int) : void
      {
         var _loc2_:§%w§ = null;
         for each(_loc2_ in this.§8#9§)
         {
            _loc2_.update(param1);
         }
      }
      
      public function §%"$§(param1:String, param2:String, param3:§0"[§) : Boolean
      {
         var _loc4_:§%w§ = null;
         for each(_loc4_ in this.§8#9§)
         {
            if(_loc4_.§2#C§(param1))
            {
               param3.§"a§(_loc4_ as §&y§,param2);
               return true;
            }
         }
         return false;
      }
      
      public function clear() : void
      {
         var _loc1_:§%w§ = null;
         for each(_loc1_ in this.§8#9§)
         {
            _loc1_.clear();
         }
      }
   }
}
