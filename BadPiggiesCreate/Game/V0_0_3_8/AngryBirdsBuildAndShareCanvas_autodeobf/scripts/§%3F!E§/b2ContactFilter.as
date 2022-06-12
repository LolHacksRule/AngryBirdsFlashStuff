package §?!E§
{
   import §8,§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var § 2§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §`!r§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§8!%§();
         var _loc4_:b2FilterData = param2.§8!%§();
         if(_loc3_.§,7§ == _loc4_.§,7§ && _loc3_.§,7§ != 0)
         {
            return _loc3_.§,7§ > 0;
         }
         return Boolean((_loc3_.§ !8§ & _loc4_.§]x§) != 0 && (_loc3_.§]x§ & _loc4_.§ !8§) != 0);
      }
      
      public function §8!i§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§`!r§(param1 as b2Fixture,param2);
      }
   }
}
