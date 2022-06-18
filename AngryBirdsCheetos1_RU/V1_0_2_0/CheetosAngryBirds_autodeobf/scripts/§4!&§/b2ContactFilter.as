package §4!&§
{
   import §8!%§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §,a§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §2!$§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§^!P§();
         var _loc4_:b2FilterData = param2.§^!P§();
         if(_loc3_.§`!T§ == _loc4_.§`!T§ && _loc3_.§`!T§ != 0)
         {
            return _loc3_.§`!T§ > 0;
         }
         return Boolean((_loc3_.§&Q§ & _loc4_.§?!Y§) != 0 && (_loc3_.§?!Y§ & _loc4_.§&Q§) != 0);
      }
      
      public function §,!3§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§2!$§(param1 as b2Fixture,param2);
      }
   }
}
