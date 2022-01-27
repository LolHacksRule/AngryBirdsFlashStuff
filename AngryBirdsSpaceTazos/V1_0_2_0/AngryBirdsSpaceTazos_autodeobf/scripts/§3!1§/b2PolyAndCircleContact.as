package §3!1§
{
   import §#!X§.b2Body;
   import §#!X§.b2Fixture;
   import §3m§.b2Collision;
   import §?f§.b2CircleShape;
   import §?f§.b2PolygonShape;
   import §?f§.b2Shape;
   import §@!@§.b2Settings;
   import §@!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function §;8§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §5[§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §3"8§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§3"8§(param1,param2);
         b2Settings.b2Assert(param1.§,!k§() == b2Shape.§"P§);
         b2Settings.b2Assert(param2.§,!k§() == b2Shape.§>"?§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::break.m_body;
         var _loc2_:b2Body = b2internal::`!y.m_body;
         b2Collision.§!!^§(b2internal::;!z,b2internal::break.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::`!y.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
