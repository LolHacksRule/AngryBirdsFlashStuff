package §_-cw§
{
   import §_-26§.b2EdgeShape;
   import §_-26§.b2PolygonShape;
   import §_-26§.b2Shape;
   import §_-WW§.b2Body;
   import §_-WW§.b2Fixture;
   import §_-dx§.b2Transform;
   import §_-iO§.b2Settings;
   import §_-iO§.b2internal;
   import §_-tK§.b2Manifold;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function §_-JU§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §_-Hh§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §_-Mm§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§_-Mm§(param1,param2);
         b2Settings.b2Assert(param1.§_-AY§() == b2Shape.§_-fB§);
         b2Settings.b2Assert(param2.§_-AY§() == b2Shape.§_-Ci§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::_-Ny.GetBody();
         var _loc2_:b2Body = b2internal::_-83.GetBody();
         this.§_-5I§(b2internal::_-Er,b2internal::_-Ny.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::_-83.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §_-5I§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
