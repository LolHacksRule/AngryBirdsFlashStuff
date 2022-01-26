package §4U§
{
   import §#!M§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §=!C§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function § else§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§+!#§();
         var _loc4_:b2FilterData = param2.§+!#§();
         if(_loc3_.§;!B§ == _loc4_.§;!B§ && _loc3_.§;!B§ != 0)
         {
            return _loc3_.§;!B§ > 0;
         }
         return Boolean((_loc3_.§[!I§ & _loc4_.§>B§) != 0 && (_loc3_.§>B§ & _loc4_.§[!I§) != 0);
      }
      
      public function §4y§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§ else§(param1 as b2Fixture,param2);
      }
   }
}
