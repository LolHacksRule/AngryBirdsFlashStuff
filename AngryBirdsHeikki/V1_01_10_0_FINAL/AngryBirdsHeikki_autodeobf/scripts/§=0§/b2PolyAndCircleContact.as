package §=0§
{
   import §!4§.b2Collision;
   import §3!R§.b2Body;
   import §3!R§.b2Fixture;
   import §7q§.b2CircleShape;
   import §7q§.b2PolygonShape;
   import §7q§.b2Shape;
   import §^P§.b2Settings;
   import §^P§.b2internal;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function §;O§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §;!^§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §;!C§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§;!C§(param1,param2);
         b2Settings.b2Assert(param1.§0i§() == b2Shape.§=!'§);
         b2Settings.b2Assert(param2.§0i§() == b2Shape.§,!#§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::&4.m_body;
         var _loc2_:b2Body = b2internal::;,.m_body;
         b2Collision.§null§(b2internal::1`,b2internal::&4.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::;,.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
