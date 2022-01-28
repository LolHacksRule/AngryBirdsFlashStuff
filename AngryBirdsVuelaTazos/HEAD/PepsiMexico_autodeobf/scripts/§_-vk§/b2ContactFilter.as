package §_-vk§
{
   import §_-rz§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §_-ZM§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §_-Wn§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§_-mD§();
         var _loc4_:b2FilterData = param2.§_-mD§();
         if(_loc3_.§_-FF§ == _loc4_.§_-FF§ && _loc3_.§_-FF§ != 0)
         {
            return _loc3_.§_-FF§ > 0;
         }
         return Boolean((_loc3_.§_-lC§ & _loc4_.§_-4V§) != 0 && (_loc3_.§_-4V§ & _loc4_.§_-lC§) != 0);
      }
      
      public function §_-cO§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§_-Wn§(param1 as b2Fixture,param2);
      }
   }
}
