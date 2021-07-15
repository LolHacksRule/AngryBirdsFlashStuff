package com.rovio.Box2D.Dynamics.Contacts
{
   import com.rovio.Box2D.Collision.Shapes.b2EdgeShape;
   import com.rovio.Box2D.Collision.Shapes.b2PolygonShape;
   import com.rovio.Box2D.Collision.Shapes.b2Shape;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Common.b2internal;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   import com.rovio.Box2D.Common.Math.b2Transform;
   import com.rovio.Box2D.Collision.b2Manifold;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function Create(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function Destroy(param1:b2Contact, param2:*) : void
      {
      }
      
      public function Reset(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.Reset(param1,param2);
         b2Settings.b2Assert(param1.GetType() == b2Shape.e_polygonShape);
         b2Settings.b2Assert(param2.GetType() == b2Shape.e_edgeShape);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::]R.GetBody();
         var _loc2_:b2Body = b2internal::7!&.GetBody();
         this.b2CollidePolyAndEdge(b2internal::=!P,b2internal::]R.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::7!&.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function b2CollidePolyAndEdge(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
