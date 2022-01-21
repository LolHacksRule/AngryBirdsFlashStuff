package §3!g§
{
   import §=!X§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §+c§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §;!6§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§3E§();
         var _loc4_:b2FilterData = param2.§3E§();
         if(_loc3_.§?!Z§ == _loc4_.§?!Z§ && _loc3_.§?!Z§ != 0)
         {
            return _loc3_.§?!Z§ > 0;
         }
         return Boolean((_loc3_.§8!A§ & _loc4_.§<!9§) != 0 && (_loc3_.§<!9§ & _loc4_.§8!A§) != 0);
      }
      
      public function §3!M§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§;!6§(param1 as b2Fixture,param2);
      }
   }
}
