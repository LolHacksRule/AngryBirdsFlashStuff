package §with§
{
   import §_-b4§.b2Settings;
   import §_-b4§.b2internal;
   import §_-cG§.b2EdgeShape;
   import §_-cG§.b2PolygonShape;
   import §_-cG§.b2Shape;
   import §_-cP§.b2Transform;
   import §_-yI§.b2Manifold;
   import §try§.b2Body;
   import §try§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function §_-JJ§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §_-y3§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §_-Ji§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§_-Ji§(param1,param2);
         b2Settings.b2Assert(param1.§_-sl§() == b2Shape.§_-fT§);
         b2Settings.b2Assert(param2.§_-sl§() == b2Shape.§_-iw§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::_-6B.GetBody();
         var _loc2_:b2Body = b2internal::_-lO.GetBody();
         this.§_-3y§(b2internal::_-Fp,b2internal::_-6B.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::_-lO.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §_-3y§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
