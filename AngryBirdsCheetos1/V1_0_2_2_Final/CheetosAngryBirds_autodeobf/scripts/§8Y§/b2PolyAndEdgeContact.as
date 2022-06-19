package §8Y§
{
   import §&U§.b2EdgeShape;
   import §&U§.b2PolygonShape;
   import §&U§.b2Shape;
   import §0!G§.b2Transform;
   import §2!F§.b2Settings;
   import §2!F§.b2internal;
   import §9"§.b2Manifold;
   import §`j§.b2Body;
   import §`j§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function §>y§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §;@§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §8j§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§8j§(param1,param2);
         b2Settings.b2Assert(param1.§"!M§() == b2Shape.§,!K§);
         b2Settings.b2Assert(param2.§"!M§() == b2Shape.§ Y§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::1!,.GetBody();
         var _loc2_:b2Body = b2internal::7+.GetBody();
         this.§"Y§(b2internal::&C,b2internal::1!,.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::7+.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §"Y§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
