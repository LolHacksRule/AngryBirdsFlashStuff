package §9!Z§
{
   import §'I§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §=!z§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §3m§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§'7§();
         var _loc4_:b2FilterData = param2.§'7§();
         if(_loc3_.§'!p§ == _loc4_.§'!p§ && _loc3_.§'!p§ != 0)
         {
            return _loc3_.§'!p§ > 0;
         }
         return Boolean((_loc3_.§ <§ & _loc4_.§"!7§) != 0 && (_loc3_.§"!7§ & _loc4_.§ <§) != 0);
      }
      
      public function §3d§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§3m§(param1 as b2Fixture,param2);
      }
   }
}
