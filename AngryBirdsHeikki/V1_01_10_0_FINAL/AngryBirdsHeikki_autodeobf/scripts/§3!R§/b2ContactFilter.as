package §3!R§
{
   import §^P§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §'!a§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §3!C§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§5[§();
         var _loc4_:b2FilterData = param2.§5[§();
         if(_loc3_.§7!-§ == _loc4_.§7!-§ && _loc3_.§7!-§ != 0)
         {
            return _loc3_.§7!-§ > 0;
         }
         return Boolean((_loc3_.§+Q§ & _loc4_.§]!&§) != 0 && (_loc3_.§]!&§ & _loc4_.§+Q§) != 0);
      }
      
      public function §[,§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§3!C§(param1 as b2Fixture,param2);
      }
   }
}
