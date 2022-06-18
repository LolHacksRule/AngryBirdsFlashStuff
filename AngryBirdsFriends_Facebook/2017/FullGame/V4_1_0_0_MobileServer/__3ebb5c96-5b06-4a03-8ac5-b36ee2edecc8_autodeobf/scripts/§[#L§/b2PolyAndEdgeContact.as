package §[#L§
{
   import §%!9§.b2Transform;
   import §+#f§.b2EdgeShape;
   import §+#f§.b2PolygonShape;
   import §+#f§.b2Shape;
   import §1!+§.b2Body;
   import §1!+§.b2Fixture;
   import §7"^§.b2Manifold;
   import §9#K§.b2Settings;
   import §9#K§.b2internal;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function §@!7§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §@#V§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §=!H§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§=!H§(param1,param2);
         b2Settings.b2Assert(param1.§%"+§() == b2Shape.§"!<§);
         b2Settings.b2Assert(param2.§%"+§() == b2Shape.§%$,§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::'!9.GetBody();
         var _loc2_:b2Body = b2internal::%#h.GetBody();
         this.§5$5§(b2internal::%#B,b2internal::'!9.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::%#h.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §5$5§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
