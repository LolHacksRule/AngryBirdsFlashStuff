package §_-Iw§
{
   import §_-lh§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §_-QX§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §_-Zp§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§_-ys§();
         var _loc4_:b2FilterData = param2.§_-ys§();
         if(_loc3_.§_-oa§ == _loc4_.§_-oa§ && _loc3_.§_-oa§ != 0)
         {
            return _loc3_.§_-oa§ > 0;
         }
         return Boolean((_loc3_.§_-Gi§ & _loc4_.§try§) != 0 && (_loc3_.§try§ & _loc4_.§_-Gi§) != 0);
      }
      
      public function §_-nf§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§_-Zp§(param1 as b2Fixture,param2);
      }
   }
}
