package §_-43§
{
   import §_-d6§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §_-GO§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §_-9W§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§_-da§();
         var _loc4_:b2FilterData = param2.§_-da§();
         if(_loc3_.§_-Yw§ == _loc4_.§_-Yw§ && _loc3_.§_-Yw§ != 0)
         {
            return _loc3_.§_-Yw§ > 0;
         }
         return Boolean((_loc3_.§_-uo§ & _loc4_.§_-eR§) != 0 && (_loc3_.§_-eR§ & _loc4_.§_-uo§) != 0);
      }
      
      public function §_-0z§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§_-9W§(param1 as b2Fixture,param2);
      }
   }
}
