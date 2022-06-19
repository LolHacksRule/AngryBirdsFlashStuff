package §69§
{
   import §0!2§.b2Manifold;
   import §1!H§.b2EdgeShape;
   import §1!H§.b2PolygonShape;
   import §1!H§.b2Shape;
   import §;]§.b2Settings;
   import §;]§.b2internal;
   import §=E§.b2Transform;
   import §?!0§.b2Body;
   import §?!0§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function §?!@§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §4!L§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §"o§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§"o§(param1,param2);
         b2Settings.b2Assert(param1.§0!$§() == b2Shape.§9!T§);
         b2Settings.b2Assert(param2.§0!$§() == b2Shape.§;!5§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::<D.GetBody();
         var _loc2_:b2Body = b2internal::+p.GetBody();
         this.§!0§(b2internal::'&,b2internal::<D.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::+p.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §!0§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
