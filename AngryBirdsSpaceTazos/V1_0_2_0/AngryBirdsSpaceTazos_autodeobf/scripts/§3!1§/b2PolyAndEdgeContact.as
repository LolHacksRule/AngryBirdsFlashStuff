package §3!1§
{
   import §#!X§.b2Body;
   import §#!X§.b2Fixture;
   import §&!S§.b2Transform;
   import §3m§.b2Manifold;
   import §?f§.b2EdgeShape;
   import §?f§.b2PolygonShape;
   import §?f§.b2Shape;
   import §@!@§.b2Settings;
   import §@!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function §;8§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §5[§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §3"8§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§3"8§(param1,param2);
         b2Settings.b2Assert(param1.§,!k§() == b2Shape.§"P§);
         b2Settings.b2Assert(param2.§,!k§() == b2Shape.§9+§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::break.GetBody();
         var _loc2_:b2Body = b2internal::`!y.GetBody();
         this.§2p§(b2internal::;!z,b2internal::break.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::`!y.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §2p§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
