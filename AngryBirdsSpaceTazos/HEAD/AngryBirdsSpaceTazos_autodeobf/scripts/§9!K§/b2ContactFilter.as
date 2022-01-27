package §9!K§
{
   import §'!a§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §9">§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §?g§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§#!I§();
         var _loc4_:b2FilterData = param2.§#!I§();
         if(_loc3_.§57§ == _loc4_.§57§ && _loc3_.§57§ != 0)
         {
            return _loc3_.§57§ > 0;
         }
         return Boolean((_loc3_.§1!"§ & _loc4_.§7"C§) != 0 && (_loc3_.§7"C§ & _loc4_.§1!"§) != 0);
      }
      
      public function §<!]§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§?g§(param1 as b2Fixture,param2);
      }
   }
}
