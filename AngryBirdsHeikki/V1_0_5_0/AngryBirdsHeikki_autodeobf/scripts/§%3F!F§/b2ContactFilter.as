package §?!F§
{
   import §3'§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §9!5§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §6!-§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§%B§();
         var _loc4_:b2FilterData = param2.§%B§();
         if(_loc3_.§,!5§ == _loc4_.§,!5§ && _loc3_.§,!5§ != 0)
         {
            return _loc3_.§,!5§ > 0;
         }
         return Boolean((_loc3_.§,!§ & _loc4_.§%R§) != 0 && (_loc3_.§%R§ & _loc4_.§,!§) != 0);
      }
      
      public function §^!N§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§6!-§(param1 as b2Fixture,param2);
      }
   }
}
