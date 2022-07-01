package §7z§
{
   import §^+§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §>@§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §@!a§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§ !D§();
         var _loc4_:b2FilterData = param2.§ !D§();
         if(_loc3_.§1"9§ == _loc4_.§1"9§ && _loc3_.§1"9§ != 0)
         {
            return _loc3_.§1"9§ > 0;
         }
         return Boolean((_loc3_.§6P§ & _loc4_.§<!r§) != 0 && (_loc3_.§<!r§ & _loc4_.§6P§) != 0);
      }
      
      public function §in§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§@!a§(param1 as b2Fixture,param2);
      }
   }
}
