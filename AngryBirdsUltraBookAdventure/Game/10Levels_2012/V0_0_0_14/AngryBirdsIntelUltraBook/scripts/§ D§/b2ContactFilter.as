package § D§
{
   import §;u§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §5!7§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §>?§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§[J§();
         var _loc4_:b2FilterData = param2.§[J§();
         if(_loc3_.§6!e§ == _loc4_.§6!e§ && _loc3_.§6!e§ != 0)
         {
            return _loc3_.§6!e§ > 0;
         }
         return Boolean((_loc3_.§,9§ & _loc4_.§ H§) != 0 && (_loc3_.§ H§ & _loc4_.§,9§) != 0);
      }
      
      public function §8!Q§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§>?§(param1 as b2Fixture,param2);
      }
   }
}
