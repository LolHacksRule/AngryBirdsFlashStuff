package §8T§
{
   import §?!n§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §1!'§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §6k§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§[!h§();
         var _loc4_:b2FilterData = param2.§[!h§();
         if(_loc3_.§9!h§ == _loc4_.§9!h§ && _loc3_.§9!h§ != 0)
         {
            return _loc3_.§9!h§ > 0;
         }
         return Boolean((_loc3_.§'H§ & _loc4_.§`!-§) != 0 && (_loc3_.§`!-§ & _loc4_.§'H§) != 0);
      }
      
      public function § 3§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§6k§(param1 as b2Fixture,param2);
      }
   }
}
