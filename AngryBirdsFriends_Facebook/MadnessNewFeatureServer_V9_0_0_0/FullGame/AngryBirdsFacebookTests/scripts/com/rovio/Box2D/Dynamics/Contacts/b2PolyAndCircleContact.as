package com.rovio.Box2D.Dynamics.Contacts
{
   import com.rovio.Box2D.Collision.Shapes.b2CircleShape;
   import com.rovio.Box2D.Collision.Shapes.b2PolygonShape;
   import com.rovio.Box2D.Collision.Shapes.b2Shape;
   import com.rovio.Box2D.Collision.b2Collision;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Common.b2internal;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function Create(allocator:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function Destroy(contact:b2Contact, allocator:*) : void
      {
      }
      
      public function Reset(fixtureA:b2Fixture, fixtureB:b2Fixture) : void
      {
         super.Reset(fixtureA,fixtureB);
         b2Settings.b2Assert(fixtureA.GetType() == b2Shape.e_polygonShape);
         b2Settings.b2Assert(fixtureB.GetType() == b2Shape.e_circleShape);
      }
      
      override b2internal function Evaluate() : void
      {
         var bA:b2Body = b2internal::m_fixtureA.m_body;
         var bB:b2Body = b2internal::m_fixtureB.m_body;
         b2Collision.CollidePolygonAndCircle(b2internal::m_manifold,b2internal::m_fixtureA.GetShape() as b2PolygonShape,bA.m_xf,b2internal::m_fixtureB.GetShape() as b2CircleShape,bB.m_xf);
      }
   }
}
