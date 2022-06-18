package §[W§
{
   import § !5§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §[I§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §7!;§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§4!>§();
         var _loc4_:b2FilterData = param2.§4!>§();
         if(_loc3_.§2U§ == _loc4_.§2U§ && _loc3_.§2U§ != 0)
         {
            return _loc3_.§2U§ > 0;
         }
         return Boolean((_loc3_.§!v§ & _loc4_.§+Q§) != 0 && (_loc3_.§+Q§ & _loc4_.§!v§) != 0);
      }
      
      public function §-?§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§7!;§(param1 as b2Fixture,param2);
      }
   }
}
