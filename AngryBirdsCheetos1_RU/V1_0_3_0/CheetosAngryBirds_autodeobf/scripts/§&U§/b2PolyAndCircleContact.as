package §&U§
{
   import §"x§.b2CircleShape;
   import §"x§.b2PolygonShape;
   import §"x§.b2Shape;
   import §#,§.b2Settings;
   import §#,§.b2internal;
   import §4]§.b2Body;
   import §4]§.b2Fixture;
   import §7$§.b2Collision;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function §[?§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §^!K§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §[]§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§[]§(param1,param2);
         b2Settings.b2Assert(param1.§,!W§() == b2Shape.§+N§);
         b2Settings.b2Assert(param2.§,!W§() == b2Shape.§8_§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::`3.m_body;
         var _loc2_:b2Body = b2internal::+!D.m_body;
         b2Collision.§&!+§(b2internal::]k,b2internal::`3.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::+!D.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
