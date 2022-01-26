package §_-EH§
{
   import §_-sU§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §_-Xj§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §_-WT§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§_-Ph§();
         var _loc4_:b2FilterData = param2.§_-Ph§();
         if(_loc3_.§_-MW§ == _loc4_.§_-MW§ && _loc3_.§_-MW§ != 0)
         {
            return _loc3_.§_-MW§ > 0;
         }
         return Boolean((_loc3_.§_-lN§ & _loc4_.§_-B5§) != 0 && (_loc3_.§_-B5§ & _loc4_.§_-lN§) != 0);
      }
      
      public function §_-NO§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§_-WT§(param1 as b2Fixture,param2);
      }
   }
}
