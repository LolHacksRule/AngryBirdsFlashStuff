package §1x§
{
   import §9!s§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §!P§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §8"u§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§8"G§();
         var _loc4_:b2FilterData = param2.§8"G§();
         if(_loc3_.§=!-§ == _loc4_.§=!-§ && _loc3_.§=!-§ != 0)
         {
            return _loc3_.§=!-§ > 0;
         }
         return Boolean((_loc3_.§'"5§ & _loc4_.§=^§) != 0 && (_loc3_.§=^§ & _loc4_.§'"5§) != 0);
      }
      
      public function §+"Z§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§8"u§(param1 as b2Fixture,param2);
      }
   }
}
