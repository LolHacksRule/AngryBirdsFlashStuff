package §"J§
{
   import §<";§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §!W§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §5"8§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§9"1§();
         var _loc4_:b2FilterData = param2.§9"1§();
         if(_loc3_.§6"2§ == _loc4_.§6"2§ && _loc3_.§6"2§ != 0)
         {
            return _loc3_.§6"2§ > 0;
         }
         return Boolean((_loc3_.§'"2§ & _loc4_.§=6§) != 0 && (_loc3_.§=6§ & _loc4_.§'"2§) != 0);
      }
      
      public function §+""§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§5"8§(param1 as b2Fixture,param2);
      }
   }
}
