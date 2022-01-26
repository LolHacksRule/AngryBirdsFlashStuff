package §_-rg§
{
   import §_-uS§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §_-eR§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §_-Hz§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§_-SN§();
         var _loc4_:b2FilterData = param2.§_-SN§();
         if(_loc3_.§_-UU§ == _loc4_.§_-UU§ && _loc3_.§_-UU§ != 0)
         {
            return _loc3_.§_-UU§ > 0;
         }
         return Boolean((_loc3_.§_-gn§ & _loc4_.§_-R5§) != 0 && (_loc3_.§_-R5§ & _loc4_.§_-gn§) != 0);
      }
      
      public function §_-bX§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§_-Hz§(param1 as b2Fixture,param2);
      }
   }
}
