package §1%§
{
   import §8!H§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §+!<§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §8`§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§3y§();
         var _loc4_:b2FilterData = param2.§3y§();
         if(_loc3_.§?!<§ == _loc4_.§?!<§ && _loc3_.§?!<§ != 0)
         {
            return _loc3_.§?!<§ > 0;
         }
         return Boolean((_loc3_.§7f§ & _loc4_.§,j§) != 0 && (_loc3_.§,j§ & _loc4_.§7f§) != 0);
      }
      
      public function §`9§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§8`§(param1 as b2Fixture,param2);
      }
   }
}
