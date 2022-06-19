package §_-00B§
{
   public class b2FilterData
   {
       
      
      public var §_-50§:uint = 1;
      
      public var §_-Vs§:uint = 65535;
      
      public var §_-cp§:int = 0;
      
      public function b2FilterData()
      {
         super();
      }
      
      public function Copy() : b2FilterData
      {
         var _loc1_:b2FilterData = new b2FilterData();
         _loc1_.§_-50§ = this.§_-50§;
         _loc1_.§_-Vs§ = this.§_-Vs§;
         _loc1_.§_-cp§ = this.§_-cp§;
         return _loc1_;
      }
   }
}
