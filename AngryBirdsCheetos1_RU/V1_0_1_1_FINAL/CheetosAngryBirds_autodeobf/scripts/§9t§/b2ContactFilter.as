package §9t§
{
   import §4! §.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §%P§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §,!3§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§6!_§();
         var _loc4_:b2FilterData = param2.§6!_§();
         if(_loc3_.§;!^§ == _loc4_.§;!^§ && _loc3_.§;!^§ != 0)
         {
            return _loc3_.§;!^§ > 0;
         }
         return Boolean((_loc3_.§'w§ & _loc4_.§6X§) != 0 && (_loc3_.§6X§ & _loc4_.§'w§) != 0);
      }
      
      public function §^!Z§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§,!3§(param1 as b2Fixture,param2);
      }
   }
}
