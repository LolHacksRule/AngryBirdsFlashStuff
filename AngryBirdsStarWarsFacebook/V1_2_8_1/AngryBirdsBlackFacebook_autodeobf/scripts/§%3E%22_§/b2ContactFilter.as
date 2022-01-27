package §>"_§
{
   import §7!I§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §1!z§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §^E§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§6"@§();
         var _loc4_:b2FilterData = param2.§6"@§();
         if(_loc3_.§0w§ == _loc4_.§0w§ && _loc3_.§0w§ != 0)
         {
            return _loc3_.§0w§ > 0;
         }
         return Boolean((_loc3_.§ "b§ & _loc4_.§3!$§) != 0 && (_loc3_.§3!$§ & _loc4_.§ "b§) != 0);
      }
      
      public function §3!e§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§^E§(param1 as b2Fixture,param2);
      }
   }
}
