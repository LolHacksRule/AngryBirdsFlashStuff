package §&!"§
{
   import §>!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §>3§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §4!T§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§<!O§();
         var _loc4_:b2FilterData = param2.§<!O§();
         if(_loc3_.§&T§ == _loc4_.§&T§ && _loc3_.§&T§ != 0)
         {
            return _loc3_.§&T§ > 0;
         }
         return Boolean((_loc3_.§+!0§ & _loc4_.§]@§) != 0 && (_loc3_.§]@§ & _loc4_.§+!0§) != 0);
      }
      
      public function §-_§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§4!T§(param1 as b2Fixture,param2);
      }
   }
}
