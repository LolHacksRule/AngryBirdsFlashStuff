package §+d§
{
   import §6%§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §3O§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §3!#§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§[Z§();
         var _loc4_:b2FilterData = param2.§[Z§();
         if(_loc3_.§>!-§ == _loc4_.§>!-§ && _loc3_.§>!-§ != 0)
         {
            return _loc3_.§>!-§ > 0;
         }
         return Boolean((_loc3_.§[9§ & _loc4_.§&!D§) != 0 && (_loc3_.§&!D§ & _loc4_.§[9§) != 0);
      }
      
      public function §?!3§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§3!#§(param1 as b2Fixture,param2);
      }
   }
}
