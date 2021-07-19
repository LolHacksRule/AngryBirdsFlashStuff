package §3!`§
{
   import §'F§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var § !G§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §%g§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§'"0§();
         var _loc4_:b2FilterData = param2.§'"0§();
         if(_loc3_.§5!F§ == _loc4_.§5!F§ && _loc3_.§5!F§ != 0)
         {
            return _loc3_.§5!F§ > 0;
         }
         return Boolean((_loc3_.§`"%§ & _loc4_.§9!W§) != 0 && (_loc3_.§9!W§ & _loc4_.§`"%§) != 0);
      }
      
      public function §@!7§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§%g§(param1 as b2Fixture,param2);
      }
   }
}
