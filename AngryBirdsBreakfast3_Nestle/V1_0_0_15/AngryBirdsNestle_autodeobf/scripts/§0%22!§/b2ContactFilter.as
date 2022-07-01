package §0"!§
{
   import §'!_§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §]2§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §^m§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§9!l§();
         var _loc4_:b2FilterData = param2.§9!l§();
         if(_loc3_.§?!x§ == _loc4_.§?!x§ && _loc3_.§?!x§ != 0)
         {
            return _loc3_.§?!x§ > 0;
         }
         return Boolean((_loc3_.§+!+§ & _loc4_.§^!d§) != 0 && (_loc3_.§^!d§ & _loc4_.§+!+§) != 0);
      }
      
      public function §+",§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§^m§(param1 as b2Fixture,param2);
      }
   }
}
