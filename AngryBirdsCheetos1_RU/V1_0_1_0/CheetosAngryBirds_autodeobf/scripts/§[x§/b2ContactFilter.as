package §[x§
{
   import §^<§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §2!N§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §@@§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§#@§();
         var _loc4_:b2FilterData = param2.§#@§();
         if(_loc3_.§1!C§ == _loc4_.§1!C§ && _loc3_.§1!C§ != 0)
         {
            return _loc3_.§1!C§ > 0;
         }
         return Boolean((_loc3_.§8h§ & _loc4_.§@Z§) != 0 && (_loc3_.§@Z§ & _loc4_.§8h§) != 0);
      }
      
      public function §5!!§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§@@§(param1 as b2Fixture,param2);
      }
   }
}
