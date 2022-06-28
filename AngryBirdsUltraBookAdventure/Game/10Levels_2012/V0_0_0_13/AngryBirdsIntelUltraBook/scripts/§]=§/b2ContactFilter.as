package §]=§
{
   import §+!,§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §=A§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §>b§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§^!M§();
         var _loc4_:b2FilterData = param2.§^!M§();
         if(_loc3_.§8!#§ == _loc4_.§8!#§ && _loc3_.§8!#§ != 0)
         {
            return _loc3_.§8!#§ > 0;
         }
         return Boolean((_loc3_.§!W§ & _loc4_.§6o§) != 0 && (_loc3_.§6o§ & _loc4_.§!W§) != 0);
      }
      
      public function §7!$§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§>b§(param1 as b2Fixture,param2);
      }
   }
}
