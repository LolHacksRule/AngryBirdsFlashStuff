package §%"v§
{
   import §+!C§.§!!S§;
   import §4o§.§!"e§;
   import §4o§.§8"1§;
   
   public class §"$,§
   {
       
      
      private var §^$3§:Vector.<§@&§>;
      
      public function §"$,§(param1:§!!S§)
      {
         var _loc2_:§@&§ = null;
         super();
         this.§^$3§ = §9!A§.§6^§();
         for each(_loc2_ in this.§^$3§)
         {
            _loc2_.initialize(param1);
         }
      }
      
      public function §3"a§(param1:String, param2:String) : void
      {
         var _loc3_:§@&§ = null;
         for each(_loc3_ in this.§^$3§)
         {
            if(_loc3_.§]#x§(param2))
            {
               _loc3_.§3"a§(param1,param2);
            }
         }
      }
      
      public function §#i§() : Array
      {
         var _loc1_:Array = [];
         var _loc2_:int = 0;
         while(_loc2_ < this.§^$3§.length)
         {
            _loc1_.push(this.§^$3§[_loc2_]);
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function update(param1:int) : void
      {
         var _loc2_:§@&§ = null;
         for each(_loc2_ in this.§^$3§)
         {
            _loc2_.update(param1);
         }
      }
      
      public function §8$$§(param1:String, param2:String, param3:§!"e§) : Boolean
      {
         var _loc4_:§@&§ = null;
         for each(_loc4_ in this.§^$3§)
         {
            if(_loc4_.§]#x§(param1))
            {
               param3.§"$§(_loc4_ as §8"1§,param2);
               return true;
            }
         }
         return false;
      }
      
      public function clear() : void
      {
         var _loc1_:§@&§ = null;
         for each(_loc1_ in this.§^$3§)
         {
            _loc1_.clear();
         }
      }
   }
}
