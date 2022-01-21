package §1B§
{
   import §9i§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §?u§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §^!'§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§2!U§();
         var _loc4_:b2FilterData = param2.§2!U§();
         if(_loc3_.§-!c§ == _loc4_.§-!c§ && _loc3_.§-!c§ != 0)
         {
            return _loc3_.§-!c§ > 0;
         }
         return Boolean((_loc3_.§^!c§ & _loc4_.§`v§) != 0 && (_loc3_.§`v§ & _loc4_.§^!c§) != 0);
      }
      
      public function §3n§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§^!'§(param1 as b2Fixture,param2);
      }
   }
}
