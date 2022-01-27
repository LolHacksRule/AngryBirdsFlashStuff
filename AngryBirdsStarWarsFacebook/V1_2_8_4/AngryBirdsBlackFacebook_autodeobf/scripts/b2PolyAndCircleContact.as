package
{
   import §1!2§.b2CircleShape;
   import §1!2§.b2PolygonShape;
   import §1!2§.b2Shape;
   import §7!I§.b2Settings;
   import §7!I§.b2internal;
   import §>"_§.b2Body;
   import §>"_§.b2Fixture;
   import §>r§.b2Collision;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function § "a§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function § !g§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §`"v§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§`"v§(param1,param2);
         b2Settings.b2Assert(param1.§+"M§() == b2Shape.§+"<§);
         b2Settings.b2Assert(param2.§+"M§() == b2Shape.§8"y§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::,"2.m_body;
         var _loc2_:b2Body = b2internal::1M.m_body;
         b2Collision.§#+§(b2internal::-#3,b2internal::,"2.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::1M.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
