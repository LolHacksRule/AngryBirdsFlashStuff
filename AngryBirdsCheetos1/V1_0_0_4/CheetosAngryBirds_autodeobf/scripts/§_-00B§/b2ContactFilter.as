package §_-00B§
{
   import §_-Jf§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §_-V6§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §_-Sd§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§const§();
         var _loc4_:b2FilterData = param2.§const§();
         if(_loc3_.§_-cp§ == _loc4_.§_-cp§ && _loc3_.§_-cp§ != 0)
         {
            return _loc3_.§_-cp§ > 0;
         }
         return Boolean((_loc3_.§_-Vs§ & _loc4_.§_-50§) != 0 && (_loc3_.§_-50§ & _loc4_.§_-Vs§) != 0);
      }
      
      public function §_-ou§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§_-Sd§(param1 as b2Fixture,param2);
      }
   }
}
