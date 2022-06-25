package §#V§
{
   public class b2FilterData
   {
       
      
      public var §8K§:uint = 1;
      
      public var §'!7§:uint = 65535;
      
      public var §^b§:int = 0;
      
      public function b2FilterData()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      public function Copy() : b2FilterData
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2FilterData = new b2FilterData();
         if(_loc2_ || this)
         {
            _loc1_.§8K§ = this.§8K§;
            do
            {
               _loc1_.§'!7§ = this.§'!7§;
               do
               {
                  _loc1_.§^b§ = this.§^b§;
               }
               while(!_loc2_);
               
            }
            while(!_loc2_);
            
         }
         return _loc1_;
      }
   }
}
