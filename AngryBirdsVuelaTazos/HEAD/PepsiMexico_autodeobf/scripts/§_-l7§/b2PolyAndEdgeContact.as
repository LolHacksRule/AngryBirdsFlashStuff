package §_-l7§
{
   import §_-Pu§.b2EdgeShape;
   import §_-Pu§.b2PolygonShape;
   import §_-Pu§.b2Shape;
   import §_-bA§.b2Transform;
   import §_-mg§.b2Manifold;
   import §_-rz§.b2Settings;
   import §_-rz§.b2internal;
   import §_-vk§.b2Body;
   import §_-vk§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function §_-gE§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §_-6A§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §_-2d§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§_-2d§(param1,param2);
         b2Settings.b2Assert(param1.§_-Wx§() == b2Shape.§_-u-§);
         b2Settings.b2Assert(param2.§_-Wx§() == b2Shape.§_-ne§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::_-lE.GetBody();
         var _loc2_:b2Body = b2internal::_-Qr.GetBody();
         this.§_-GI§(b2internal::_-tS,b2internal::_-lE.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::_-Qr.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §_-GI§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
