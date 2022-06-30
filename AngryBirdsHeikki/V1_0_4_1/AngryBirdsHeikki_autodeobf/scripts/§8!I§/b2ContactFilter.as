package §8!I§
{
   import §4x§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §4?§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §%!B§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§#s§();
         var _loc4_:b2FilterData = param2.§#s§();
         if(_loc3_.§9k§ == _loc4_.§9k§ && _loc3_.§9k§ != 0)
         {
            return _loc3_.§9k§ > 0;
         }
         return Boolean((_loc3_.§,L§ & _loc4_.§"t§) != 0 && (_loc3_.§"t§ & _loc4_.§,L§) != 0);
      }
      
      public function §if§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§%!B§(param1 as b2Fixture,param2);
      }
   }
}
