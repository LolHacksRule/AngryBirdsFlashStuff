package §#I§
{
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §^!J§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §'!F§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§4!Z§();
         var _loc4_:b2FilterData = param2.§4!Z§();
         if(_loc3_.§"!7§ == _loc4_.§"!7§ && _loc3_.§"!7§ != 0)
         {
            return _loc3_.§"!7§ > 0;
         }
         return Boolean((_loc3_.§?!K§ & _loc4_.§[!k§) != 0 && (_loc3_.§[!k§ & _loc4_.§?!K§) != 0);
      }
      
      public function §8x§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§'!F§(param1 as b2Fixture,param2);
      }
   }
}
