package §7!5§
{
   import §7!Y§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §!!D§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §0!A§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§8!X§();
         var _loc4_:b2FilterData = param2.§8!X§();
         if(_loc3_.§0!U§ == _loc4_.§0!U§ && _loc3_.§0!U§ != 0)
         {
            return _loc3_.§0!U§ > 0;
         }
         return Boolean((_loc3_.§2]§ & _loc4_.§`!%§) != 0 && (_loc3_.§`!%§ & _loc4_.§2]§) != 0);
      }
      
      public function §9[§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§0!A§(param1 as b2Fixture,param2);
      }
   }
}
