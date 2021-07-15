package com.rovio.Box2D.Dynamics.Contacts
{
   import com.rovio.Box2D.Collision.Shapes.b2CircleShape;
   import com.rovio.Box2D.Collision.Shapes.b2EdgeShape;
   import com.rovio.Box2D.Common.b2internal;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   import com.rovio.Box2D.Common.Math.b2Transform;
   import com.rovio.Box2D.Collision.b2Manifold;
   
   use namespace b2internal;
   
   public class b2EdgeAndCircleContact extends b2Contact
   {
       
      
      public function b2EdgeAndCircleContact()
      {
         super();
      }
      
      public static function Create(param1:*) : b2Contact
      {
         return new b2EdgeAndCircleContact();
      }
      
      public static function Destroy(param1:b2Contact, param2:*) : void
      {
      }
      
      public function Reset(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.Reset(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::m_fixtureA.GetBody();
         var _loc2_:b2Body = b2internal::m_fixtureB.GetBody();
         this.b2CollideEdgeAndCircle(b2internal::m_manifold,b2internal::m_fixtureA.GetShape() as b2EdgeShape,_loc1_.m_xf,b2internal::m_fixtureB.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
      
      private function b2CollideEdgeAndCircle(param1:b2Manifold, param2:b2EdgeShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
      }
   }
}
