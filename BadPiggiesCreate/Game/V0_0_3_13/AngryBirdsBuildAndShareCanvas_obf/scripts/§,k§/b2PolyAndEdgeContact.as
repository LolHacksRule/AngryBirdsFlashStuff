package §,k§
{
   import §-g§.b2Manifold;
   import §1!z§.b2Transform;
   import §5!]§.b2EdgeShape;
   import §5!]§.b2PolygonShape;
   import §5!]§.b2Shape;
   import §7!q§.b2Body;
   import §7!q§.b2Fixture;
   import §[M§.b2Settings;
   import §[M§.b2internal;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function §="1§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §,"0§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §;!V§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§;!V§(param1,param2);
         b2Settings.b2Assert(param1.§7!r§() == b2Shape.§8!3§);
         b2Settings.b2Assert(param2.§7!r§() == b2Shape.§function§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::?a.GetBody();
         var _loc2_:b2Body = b2internal::;!S.GetBody();
         this.§?"=§(b2internal::28,b2internal::?a.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::;!S.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §?"=§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
