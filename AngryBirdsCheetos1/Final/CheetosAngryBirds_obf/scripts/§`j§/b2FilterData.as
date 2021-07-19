package §`j§
{
   public class b2FilterData
   {
       
      
      public var §^-§:uint = 1;
      
      public var §&!8§:uint = 65535;
      
      public var §4g§:int = 0;
      
      public function b2FilterData()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public function Copy() : b2FilterData
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2FilterData = new b2FilterData();
         if(!_loc2_)
         {
            _loc1_.§^-§ = this.§^-§;
         }
         do
         {
            _loc1_.§&!8§ = this.§&!8§;
            do
            {
               _loc1_.§4g§ = this.§4g§;
            }
            while(!(_loc3_ || _loc2_));
            
         }
         while(!_loc3_);
         
         return _loc1_;
      }
   }
}
