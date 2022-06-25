package §_-aU§
{
   public class b2FilterData
   {
       
      
      public var §_-R-§:uint = 1;
      
      public var §_-j6§:uint = 65535;
      
      public var §_-0CL§:int = 0;
      
      public function b2FilterData()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      public function Copy() : b2FilterData
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2FilterData = new b2FilterData();
         if(!(_loc2_ && _loc1_))
         {
            _loc1_.§_-R-§ = this.§_-R-§;
            do
            {
               _loc1_.§_-j6§ = this.§_-j6§;
               do
               {
                  _loc1_.§_-0CL§ = this.§_-0CL§;
               }
               while(!_loc3_);
               
            }
            while(!(_loc3_ || _loc2_));
            
         }
         return _loc1_;
      }
   }
}
