package § #>§
{
   import §#g§.§8§;
   import §,0§.§?h§;
   import §,0§.§`5§;
   
   public class §=!,§
   {
       
      
      private var §-#b§:Vector.<§8#i§>;
      
      public function §=!,§(param1:§8#3§)
      {
         var _loc2_:§8#i§ = null;
         super();
         this.§-#b§ = §[$C§.§`q§();
         for each(_loc2_ in this.§-#b§)
         {
            _loc2_.initialize(param1);
         }
      }
      
      public function §+"-§(param1:String, param2:String) : void
      {
         var _loc3_:§8#i§ = null;
         for each(_loc3_ in this.§-#b§)
         {
            if(_loc3_.§#!"§(param2))
            {
               _loc3_.§+"-§(param1,param2);
            }
         }
      }
      
      public function §`!=§() : Array
      {
         var _loc1_:Array = [];
         var _loc2_:int = 0;
         while(_loc2_ < this.§-#b§.length)
         {
            _loc1_.push(this.§-#b§[_loc2_]);
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function update(param1:int) : void
      {
         var _loc2_:§8#i§ = null;
         for each(_loc2_ in this.§-#b§)
         {
            _loc2_.update(param1);
         }
      }
      
      public function §7!7§(param1:String, param2:String, param3:§`5§) : Boolean
      {
         var _loc4_:§8#i§ = null;
         for each(_loc4_ in this.§-#b§)
         {
            if(_loc4_.§#!"§(param1))
            {
               param3.§!@§(_loc4_ as §?h§,param2);
               return true;
            }
         }
         return false;
      }
      
      public function clear() : void
      {
         var _loc1_:§8#i§ = null;
         for each(_loc1_ in this.§-#b§)
         {
            _loc1_.clear();
         }
      }
   }
}
