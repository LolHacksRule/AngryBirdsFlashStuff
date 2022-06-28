package §_-aU§
{
   import §_-5§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §_-Rt§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §_-VH§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§_-et§();
         var _loc4_:b2FilterData = param2.§_-et§();
         if(_loc3_.§_-0CL§ == _loc4_.§_-0CL§ && _loc3_.§_-0CL§ != 0)
         {
            return _loc3_.§_-0CL§ > 0;
         }
         return Boolean((_loc3_.§_-j6§ & _loc4_.§_-R-§) != 0 && (_loc3_.§_-R-§ & _loc4_.§_-j6§) != 0);
      }
      
      public function §_-Kw§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§_-VH§(param1 as b2Fixture,param2);
      }
   }
}
