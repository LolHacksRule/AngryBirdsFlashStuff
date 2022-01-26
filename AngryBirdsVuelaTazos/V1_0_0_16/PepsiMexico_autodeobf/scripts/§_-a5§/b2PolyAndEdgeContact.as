package §_-a5§
{
   import §_-Iw§.b2Body;
   import §_-Iw§.b2Fixture;
   import §_-Ja§.b2Transform;
   import §_-Kt§.b2EdgeShape;
   import §_-Kt§.b2PolygonShape;
   import §_-Kt§.b2Shape;
   import §_-lh§.b2Settings;
   import §_-lh§.b2internal;
   import §_-qg§.b2Manifold;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function §_-xO§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §_-2A§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §_-i0§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§_-i0§(param1,param2);
         b2Settings.b2Assert(param1.§_-ww§() == b2Shape.§_-6T§);
         b2Settings.b2Assert(param2.§_-ww§() == b2Shape.§_-mn§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::_-NZ.GetBody();
         var _loc2_:b2Body = b2internal::_-xL.GetBody();
         this.§_-EB§(b2internal::_-Xg,b2internal::_-NZ.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::_-xL.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §_-EB§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
