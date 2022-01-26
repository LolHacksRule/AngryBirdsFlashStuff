package §_-qW§
{
   import §_-SM§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §_-ai§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §_-ah§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§_-lj§();
         var _loc4_:b2FilterData = param2.§_-lj§();
         if(_loc3_.§_-J2§ == _loc4_.§_-J2§ && _loc3_.§_-J2§ != 0)
         {
            return _loc3_.§_-J2§ > 0;
         }
         return Boolean((_loc3_.§_-6a§ & _loc4_.§_-Ub§) != 0 && (_loc3_.§_-Ub§ & _loc4_.§_-6a§) != 0);
      }
      
      public function §_-G-§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§_-ah§(param1 as b2Fixture,param2);
      }
   }
}
