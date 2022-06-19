package § !k§
{
   import §in§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §^!B§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §^k§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§#!>§();
         var _loc4_:b2FilterData = param2.§#!>§();
         if(_loc3_.§@!4§ == _loc4_.§@!4§ && _loc3_.§@!4§ != 0)
         {
            return _loc3_.§@!4§ > 0;
         }
         return Boolean((_loc3_.§#!N§ & _loc4_.§`!8§) != 0 && (_loc3_.§`!8§ & _loc4_.§#!N§) != 0);
      }
      
      public function §+!R§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§^k§(param1 as b2Fixture,param2);
      }
   }
}
