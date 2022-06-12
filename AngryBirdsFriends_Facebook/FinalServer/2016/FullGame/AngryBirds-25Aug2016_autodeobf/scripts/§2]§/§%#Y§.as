package §2]§
{
   import §52§.§#!,§;
   import §6§.§]!Q§;
   import §6§.include;
   
   public class §%#Y§
   {
       
      
      private var §4#>§:Vector.<§]"Q§>;
      
      public function §%#Y§(param1:§#!,§)
      {
         var _loc2_:§]"Q§ = null;
         super();
         this.§4#>§ = §9!;§.§,"k§();
         for each(_loc2_ in this.§4#>§)
         {
            _loc2_.initialize(param1);
         }
      }
      
      public function §2T§(param1:String, param2:String) : void
      {
         var _loc3_:§]"Q§ = null;
         for each(_loc3_ in this.§4#>§)
         {
            if(_loc3_.§@$"§(param2))
            {
               _loc3_.§2T§(param1,param2);
            }
         }
      }
      
      public function §[!n§() : Array
      {
         var _loc1_:Array = [];
         var _loc2_:int = 0;
         while(_loc2_ < this.§4#>§.length)
         {
            _loc1_.push(this.§4#>§[_loc2_]);
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function update(param1:int) : void
      {
         var _loc2_:§]"Q§ = null;
         for each(_loc2_ in this.§4#>§)
         {
            _loc2_.update(param1);
         }
      }
      
      public function §<!]§(param1:String, param2:String, param3:§]!Q§) : Boolean
      {
         var _loc4_:§]"Q§ = null;
         for each(_loc4_ in this.§4#>§)
         {
            if(_loc4_.§@$"§(param1))
            {
               param3.§^#B§(_loc4_ as include,param2);
               return true;
            }
         }
         return false;
      }
      
      public function clear() : void
      {
         var _loc1_:§]"Q§ = null;
         for each(_loc1_ in this.§4#>§)
         {
            _loc1_.clear();
         }
      }
   }
}
