package § y§
{
   import §54§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §>!<§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §!=§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§<!+§();
         var _loc4_:b2FilterData = param2.§<!+§();
         if(_loc3_.§+s§ == _loc4_.§+s§ && _loc3_.§+s§ != 0)
         {
            return _loc3_.§+s§ > 0;
         }
         return Boolean((_loc3_.§,6§ & _loc4_.§8!9§) != 0 && (_loc3_.§8!9§ & _loc4_.§,6§) != 0);
      }
      
      public function §=v§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§!=§(param1 as b2Fixture,param2);
      }
   }
}
