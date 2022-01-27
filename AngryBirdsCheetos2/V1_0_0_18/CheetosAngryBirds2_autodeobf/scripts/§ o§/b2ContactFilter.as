package § o§
{
   import §"0§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §7l§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §#!7§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§+R§();
         var _loc4_:b2FilterData = param2.§+R§();
         if(_loc3_.§=!d§ == _loc4_.§=!d§ && _loc3_.§=!d§ != 0)
         {
            return _loc3_.§=!d§ > 0;
         }
         return Boolean((_loc3_.§&!6§ & _loc4_.§5!G§) != 0 && (_loc3_.§5!G§ & _loc4_.§&!6§) != 0);
      }
      
      public function §-#§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§#!7§(param1 as b2Fixture,param2);
      }
   }
}
