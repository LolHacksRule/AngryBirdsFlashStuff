package §69§
{
   import §0!2§.b2Collision;
   import §1!H§.b2CircleShape;
   import §1!H§.b2PolygonShape;
   import §1!H§.b2Shape;
   import §;]§.b2Settings;
   import §;]§.b2internal;
   import §?!0§.b2Body;
   import §?!0§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function §?!@§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §4!L§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §"o§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§"o§(param1,param2);
         b2Settings.b2Assert(param1.§0!$§() == b2Shape.§9!T§);
         b2Settings.b2Assert(param2.§0!$§() == b2Shape.§8;§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::<D.m_body;
         var _loc2_:b2Body = b2internal::+p.m_body;
         b2Collision.§ !B§(b2internal::'&,b2internal::<D.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::+p.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
