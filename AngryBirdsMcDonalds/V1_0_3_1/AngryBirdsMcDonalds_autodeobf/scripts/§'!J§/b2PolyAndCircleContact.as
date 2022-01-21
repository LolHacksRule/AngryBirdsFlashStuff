package §'!J§
{
   import §&x§.b2Body;
   import §&x§.b2Fixture;
   import §-!T§.b2Collision;
   import §3o§.b2Settings;
   import §3o§.b2internal;
   import §8!b§.b2CircleShape;
   import §8!b§.b2PolygonShape;
   import §8!b§.b2Shape;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function §;!1§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function § ;§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §?r§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§?r§(param1,param2);
         b2Settings.b2Assert(param1.§"!I§() == b2Shape.§5!e§);
         b2Settings.b2Assert(param2.§"!I§() == b2Shape.§<7§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal:: `.m_body;
         var _loc2_:b2Body = b2internal::"!9.m_body;
         b2Collision.§@!O§(b2internal::1z,b2internal:: `.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::"!9.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
