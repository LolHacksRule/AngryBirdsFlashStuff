package §`w§
{
   import §7!u§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §#3§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §9e§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§,`§();
         var _loc4_:b2FilterData = param2.§,`§();
         if(_loc3_.§6L§ == _loc4_.§6L§ && _loc3_.§6L§ != 0)
         {
            return _loc3_.§6L§ > 0;
         }
         return Boolean((_loc3_.§?!^§ & _loc4_.§`!U§) != 0 && (_loc3_.§`!U§ & _loc4_.§?!^§) != 0);
      }
      
      public function §&W§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§9e§(param1 as b2Fixture,param2);
      }
   }
}
