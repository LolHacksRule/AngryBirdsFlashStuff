package §_-2V§
{
   import §_-8i§.b2EdgeShape;
   import §_-8i§.b2PolygonShape;
   import §_-8i§.b2Shape;
   import §_-SM§.b2Settings;
   import §_-SM§.b2internal;
   import §_-qW§.b2Body;
   import §_-qW§.b2Fixture;
   import §_-wZ§.b2Manifold;
   import §var§.b2Transform;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function §_-0K§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §_-l6§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §_-ut§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§_-ut§(param1,param2);
         b2Settings.b2Assert(param1.§_-kK§() == b2Shape.§_-Bp§);
         b2Settings.b2Assert(param2.§_-kK§() == b2Shape.§_-pV§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::_-ow.GetBody();
         var _loc2_:b2Body = b2internal::_-10.GetBody();
         this.§_-9w§(b2internal::_-iN,b2internal::_-ow.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::_-10.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §_-9w§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
