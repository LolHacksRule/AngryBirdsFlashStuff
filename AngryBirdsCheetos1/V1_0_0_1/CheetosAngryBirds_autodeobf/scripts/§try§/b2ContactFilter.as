package §try§
{
   import §_-b4§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §_-V7§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §_-hE§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§_-dl§();
         var _loc4_:b2FilterData = param2.§_-dl§();
         if(_loc3_.§_-v6§ == _loc4_.§_-v6§ && _loc3_.§_-v6§ != 0)
         {
            return _loc3_.§_-v6§ > 0;
         }
         return Boolean((_loc3_.§_-rY§ & _loc4_.§_-26§) != 0 && (_loc3_.§_-26§ & _loc4_.§_-rY§) != 0);
      }
      
      public function §_-lC§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§_-hE§(param1 as b2Fixture,param2);
      }
   }
}
