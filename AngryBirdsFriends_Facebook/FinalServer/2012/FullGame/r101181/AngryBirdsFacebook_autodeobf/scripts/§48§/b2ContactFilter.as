package §48§
{
   import §4!!§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §"!$§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §8N§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§1!=§();
         var _loc4_:b2FilterData = param2.§1!=§();
         if(_loc3_.§^]§ == _loc4_.§^]§ && _loc3_.§^]§ != 0)
         {
            return _loc3_.§^]§ > 0;
         }
         return Boolean((_loc3_.§"R§ & _loc4_.§>!t§) != 0 && (_loc3_.§>!t§ & _loc4_.§"R§) != 0);
      }
      
      public function § !&§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§8N§(param1 as b2Fixture,param2);
      }
   }
}
