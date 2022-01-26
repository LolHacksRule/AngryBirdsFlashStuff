package §_-WW§
{
   import §_-iO§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §_-P9§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §_-GT§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§_-t3§();
         var _loc4_:b2FilterData = param2.§_-t3§();
         if(_loc3_.§_-Ou§ == _loc4_.§_-Ou§ && _loc3_.§_-Ou§ != 0)
         {
            return _loc3_.§_-Ou§ > 0;
         }
         return Boolean((_loc3_.§_-ML§ & _loc4_.§_-vi§) != 0 && (_loc3_.§_-vi§ & _loc4_.§_-ML§) != 0);
      }
      
      public function §_-Me§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§_-GT§(param1 as b2Fixture,param2);
      }
   }
}
