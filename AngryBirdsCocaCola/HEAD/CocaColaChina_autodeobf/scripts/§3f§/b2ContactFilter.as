package §3f§
{
   import §7!C§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §#!A§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §<!7§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§?!L§();
         var _loc4_:b2FilterData = param2.§?!L§();
         if(_loc3_.§1M§ == _loc4_.§1M§ && _loc3_.§1M§ != 0)
         {
            return _loc3_.§1M§ > 0;
         }
         return Boolean((_loc3_.§2h§ & _loc4_.§ o§) != 0 && (_loc3_.§ o§ & _loc4_.§2h§) != 0);
      }
      
      public function §?!G§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§<!7§(param1 as b2Fixture,param2);
      }
   }
}
