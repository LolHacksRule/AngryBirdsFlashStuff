package §?!0§
{
   import §;]§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §-_§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §,M§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§'!+§();
         var _loc4_:b2FilterData = param2.§'!+§();
         if(_loc3_.§+!0§ == _loc4_.§+!0§ && _loc3_.§+!0§ != 0)
         {
            return _loc3_.§+!0§ > 0;
         }
         return Boolean((_loc3_.§]@§ & _loc4_.§?p§) != 0 && (_loc3_.§?p§ & _loc4_.§]@§) != 0);
      }
      
      public function §?o§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§,M§(param1 as b2Fixture,param2);
      }
   }
}
