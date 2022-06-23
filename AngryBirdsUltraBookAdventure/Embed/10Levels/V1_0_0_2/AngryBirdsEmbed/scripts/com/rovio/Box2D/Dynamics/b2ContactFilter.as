package com.rovio.Box2D.Dynamics
{
   import com.rovio.Box2D.Common.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var b2_defaultFilter:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function ShouldCollide(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.GetFilterData();
         var _loc4_:b2FilterData = param2.GetFilterData();
         if(_loc3_.groupIndex == _loc4_.groupIndex && _loc3_.groupIndex != 0)
         {
            return _loc3_.groupIndex > 0;
         }
         return Boolean((_loc3_.maskBits & _loc4_.categoryBits) != 0 && (_loc3_.categoryBits & _loc4_.maskBits) != 0);
      }
      
      public function RayCollide(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.ShouldCollide(param1 as b2Fixture,param2);
      }
   }
}
