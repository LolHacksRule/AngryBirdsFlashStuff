package §[#L§
{
   import §+#f§.b2CircleShape;
   import §+#f§.b2PolygonShape;
   import §+#f§.b2Shape;
   import §1!+§.b2Body;
   import §1!+§.b2Fixture;
   import §7"^§.b2Collision;
   import §9#K§.b2Settings;
   import §9#K§.b2internal;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function §@!7§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §@#V§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §=!H§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§=!H§(param1,param2);
         b2Settings.b2Assert(param1.§%"+§() == b2Shape.§"!<§);
         b2Settings.b2Assert(param2.§%"+§() == b2Shape.§ j§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::'!9.m_body;
         var _loc2_:b2Body = b2internal::%#h.m_body;
         b2Collision.§%#&§(b2internal::%#B,b2internal::'!9.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::%#h.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
