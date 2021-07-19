package § !t§
{
   import §?s§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §0w§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §`t§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§[!V§();
         var _loc4_:b2FilterData = param2.§[!V§();
         if(_loc3_.§%x§ == _loc4_.§%x§ && _loc3_.§%x§ != 0)
         {
            return _loc3_.§%x§ > 0;
         }
         return Boolean((_loc3_.§#$§ & _loc4_.§]!J§) != 0 && (_loc3_.§]!J§ & _loc4_.§#$§) != 0);
      }
      
      public function §>!=§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§`t§(param1 as b2Fixture,param2);
      }
   }
}
