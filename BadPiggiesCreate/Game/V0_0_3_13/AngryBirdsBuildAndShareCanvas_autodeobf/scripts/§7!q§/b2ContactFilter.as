package §7!q§
{
   import §[M§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §-"2§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §]!R§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§`$§();
         var _loc4_:b2FilterData = param2.§`$§();
         if(_loc3_.§=!!§ == _loc4_.§=!!§ && _loc3_.§=!!§ != 0)
         {
            return _loc3_.§=!!§ > 0;
         }
         return Boolean((_loc3_.§4!L§ & _loc4_.§1'§) != 0 && (_loc3_.§1'§ & _loc4_.§4!L§) != 0);
      }
      
      public function §7&§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§]!R§(param1 as b2Fixture,param2);
      }
   }
}
