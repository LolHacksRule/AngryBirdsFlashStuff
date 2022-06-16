package §`!k§
{
   import §"#i§.b2CircleShape;
   import §"#i§.b2PolygonShape;
   import §"#i§.b2Shape;
   import §'"$§.b2Collision;
   import §,!s§.b2Settings;
   import §,!s§.b2internal;
   import §4"O§.b2Body;
   import §4"O§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function §4"T§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §`"e§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §1!M§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§1!M§(param1,param2);
         b2Settings.b2Assert(param1.§+L§() == b2Shape.§9##§);
         b2Settings.b2Assert(param2.§+L§() == b2Shape.§!X§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::##y.m_body;
         var _loc2_:b2Body = b2internal::0!m.m_body;
         b2Collision.§4!?§(b2internal::1"j,b2internal::##y.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::0!m.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
