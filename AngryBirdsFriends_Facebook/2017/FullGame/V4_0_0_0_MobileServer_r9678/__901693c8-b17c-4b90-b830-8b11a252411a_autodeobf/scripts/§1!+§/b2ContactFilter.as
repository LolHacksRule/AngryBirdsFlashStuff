package §1!+§
{
   import §9#K§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §1!f§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §`$&§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.GetFilterData();
         var _loc4_:b2FilterData = param2.GetFilterData();
         if(_loc3_.§4"Z§ == _loc4_.§4"Z§ && _loc3_.§4"Z§ != 0)
         {
            return _loc3_.§4"Z§ > 0;
         }
         return Boolean((_loc3_.§4"?§ & _loc4_.§=]§) != 0 && (_loc3_.§=]§ & _loc4_.§4"?§) != 0);
      }
      
      public function §+!0§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§`$&§(param1 as b2Fixture,param2);
      }
   }
}
