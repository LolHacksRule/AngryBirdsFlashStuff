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
      
      public function ShouldCollide(fixtureA:b2Fixture, fixtureB:b2Fixture) : Boolean
      {
         var filter1:b2FilterData = fixtureA.GetFilterData();
         var filter2:b2FilterData = fixtureB.GetFilterData();
         if(filter1.groupIndex == filter2.groupIndex && filter1.groupIndex != 0)
         {
            return filter1.groupIndex > 0;
         }
         return Boolean((filter1.maskBits & filter2.categoryBits) != 0 && (filter1.categoryBits & filter2.maskBits) != 0);
      }
      
      public function RayCollide(userData:*, fixture:b2Fixture) : Boolean
      {
         if(!userData)
         {
            return true;
         }
         return this.ShouldCollide(userData as b2Fixture,fixture);
      }
   }
}
