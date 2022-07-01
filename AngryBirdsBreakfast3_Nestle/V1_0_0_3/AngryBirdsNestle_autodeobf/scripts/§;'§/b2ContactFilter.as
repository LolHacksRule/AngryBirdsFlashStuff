package §;'§
{
   import § !%§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §&6§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §]!_§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§4A§();
         var _loc4_:b2FilterData = param2.§4A§();
         if(_loc3_.§#!g§ == _loc4_.§#!g§ && _loc3_.§#!g§ != 0)
         {
            return _loc3_.§#!g§ > 0;
         }
         return Boolean((_loc3_.§]!=§ & _loc4_.§]!-§) != 0 && (_loc3_.§]!-§ & _loc4_.§]!=§) != 0);
      }
      
      public function §>"1§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§]!_§(param1 as b2Fixture,param2);
      }
   }
}
