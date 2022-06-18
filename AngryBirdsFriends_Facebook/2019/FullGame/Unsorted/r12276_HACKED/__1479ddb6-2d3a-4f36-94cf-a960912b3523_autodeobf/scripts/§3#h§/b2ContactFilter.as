package §3#h§
{
   import §1#F§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §0_§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §1!j§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.GetFilterData();
         var _loc4_:b2FilterData = param2.GetFilterData();
         if(_loc3_.§;!^§ == _loc4_.§;!^§ && _loc3_.§;!^§ != 0)
         {
            return _loc3_.§;!^§ > 0;
         }
         return Boolean((_loc3_.§@>§ & _loc4_.§1$3§) != 0 && (_loc3_.§1$3§ & _loc4_.§@>§) != 0);
      }
      
      public function §["m§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§1!j§(param1 as b2Fixture,param2);
      }
   }
}
