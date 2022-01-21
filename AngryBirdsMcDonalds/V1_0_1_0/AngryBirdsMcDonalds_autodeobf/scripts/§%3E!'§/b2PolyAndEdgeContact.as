package §>!'§
{
   import §!R§.b2Transform;
   import §1B§.b2Body;
   import §1B§.b2Fixture;
   import §9i§.b2Settings;
   import §9i§.b2internal;
   import §]7§.b2Manifold;
   import §]q§.b2EdgeShape;
   import §]q§.b2PolygonShape;
   import §]q§.b2Shape;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function § %§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §%_§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §<! §(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§<! §(param1,param2);
         b2Settings.b2Assert(param1.§#+§() == b2Shape.§1!N§);
         b2Settings.b2Assert(param2.§#+§() == b2Shape.§6!V§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::7c.GetBody();
         var _loc2_:b2Body = b2internal::!!@.GetBody();
         this.§;!;§(b2internal::?!N,b2internal::7c.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::!!@.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §;!;§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
