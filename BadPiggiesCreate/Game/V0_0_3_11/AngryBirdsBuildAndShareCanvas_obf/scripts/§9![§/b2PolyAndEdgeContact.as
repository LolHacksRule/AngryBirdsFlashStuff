package §9![§
{
   import § 6§.b2Manifold;
   import §+L§.b2Transform;
   import §1!3§.b2EdgeShape;
   import §1!3§.b2PolygonShape;
   import §1!3§.b2Shape;
   import §7z§.b2Body;
   import §7z§.b2Fixture;
   import §^+§.b2Settings;
   import §^+§.b2internal;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function §7T§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §#"&§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §^m§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§^m§(param1,param2);
         b2Settings.b2Assert(param1.§,!B§() == b2Shape.§4!Q§);
         b2Settings.b2Assert(param2.§,!B§() == b2Shape.§-"$§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::2G.GetBody();
         var _loc2_:b2Body = b2internal::]![.GetBody();
         this.§%3§(b2internal::7"-,b2internal::2G.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::]![.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §%3§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
