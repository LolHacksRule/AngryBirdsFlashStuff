package §break§
{
   import §2!+§.b2EdgeShape;
   import §2!+§.b2PolygonShape;
   import §2!+§.b2Shape;
   import §7!u§.b2Settings;
   import §7!u§.b2internal;
   import §72§.b2Manifold;
   import §>H§.b2Transform;
   import §`w§.b2Body;
   import §`w§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function §`4§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §[M§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §<!e§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§<!e§(param1,param2);
         b2Settings.b2Assert(param1.§2!r§() == b2Shape.§6!t§);
         b2Settings.b2Assert(param2.§2!r§() == b2Shape.§=Q§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::50.GetBody();
         var _loc2_:b2Body = b2internal::'z.GetBody();
         this.§%!,§(b2internal::"!m,b2internal::50.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::'z.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §%!,§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
