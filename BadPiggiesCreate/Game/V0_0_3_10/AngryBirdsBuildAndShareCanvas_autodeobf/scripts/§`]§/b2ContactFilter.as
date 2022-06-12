package §`]§
{
   import §!S§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §^!o§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §]P§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§^!q§();
         var _loc4_:b2FilterData = param2.§^!q§();
         if(_loc3_.§^!Y§ == _loc4_.§^!Y§ && _loc3_.§^!Y§ != 0)
         {
            return _loc3_.§^!Y§ > 0;
         }
         return Boolean((_loc3_.§+r§ & _loc4_.§3"8§) != 0 && (_loc3_.§3"8§ & _loc4_.§+r§) != 0);
      }
      
      public function §9!0§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§]P§(param1 as b2Fixture,param2);
      }
   }
}
