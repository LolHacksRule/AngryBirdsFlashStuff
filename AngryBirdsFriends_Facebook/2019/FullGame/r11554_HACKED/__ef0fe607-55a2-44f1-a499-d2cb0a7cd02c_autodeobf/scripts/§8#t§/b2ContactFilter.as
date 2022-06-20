package §8#t§
{
   import §[!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §?#m§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §1$=§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.GetFilterData();
         var _loc4_:b2FilterData = param2.GetFilterData();
         if(_loc3_.§?#0§ == _loc4_.§?#0§ && _loc3_.§?#0§ != 0)
         {
            return _loc3_.§?#0§ > 0;
         }
         return Boolean((_loc3_.§#"5§ & _loc4_.§`!+§) != 0 && (_loc3_.§`!+§ & _loc4_.§#"5§) != 0);
      }
      
      public function §>#_§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§1$=§(param1 as b2Fixture,param2);
      }
   }
}
