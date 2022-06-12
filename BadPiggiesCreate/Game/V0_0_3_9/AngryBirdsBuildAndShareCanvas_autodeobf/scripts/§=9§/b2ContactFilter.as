package §=9§
{
   import §7"'§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §,z§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §1O§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§%$§();
         var _loc4_:b2FilterData = param2.§%$§();
         if(_loc3_.§5t§ == _loc4_.§5t§ && _loc3_.§5t§ != 0)
         {
            return _loc3_.§5t§ > 0;
         }
         return Boolean((_loc3_.§&!C§ & _loc4_.§1`§) != 0 && (_loc3_.§1`§ & _loc4_.§&!C§) != 0);
      }
      
      public function §?!5§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§1O§(param1 as b2Fixture,param2);
      }
   }
}
