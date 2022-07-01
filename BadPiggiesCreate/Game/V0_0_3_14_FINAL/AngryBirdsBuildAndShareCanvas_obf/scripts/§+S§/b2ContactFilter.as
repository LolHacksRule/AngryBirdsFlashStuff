package §+S§
{
   import §=o§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §5"=§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function § each§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§%!$§();
         var _loc4_:b2FilterData = param2.§%!$§();
         if(_loc3_.§[-§ == _loc4_.§[-§ && _loc3_.§[-§ != 0)
         {
            return _loc3_.§[-§ > 0;
         }
         return Boolean((_loc3_.§!!R§ & _loc4_.§?!C§) != 0 && (_loc3_.§?!C§ & _loc4_.§!!R§) != 0);
      }
      
      public function §+!@§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§ each§(param1 as b2Fixture,param2);
      }
   }
}
