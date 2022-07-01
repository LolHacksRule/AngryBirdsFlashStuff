package §0!j§
{
   import §!r§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §5J§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §!S§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§"Y§();
         var _loc4_:b2FilterData = param2.§"Y§();
         if(_loc3_.§^!S§ == _loc4_.§^!S§ && _loc3_.§^!S§ != 0)
         {
            return _loc3_.§^!S§ > 0;
         }
         return Boolean((_loc3_.§8F§ & _loc4_.§+!j§) != 0 && (_loc3_.§+!j§ & _loc4_.§8F§) != 0);
      }
      
      public function §6!_§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§!S§(param1 as b2Fixture,param2);
      }
   }
}
