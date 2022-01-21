package §>!'§
{
   import §1B§.b2Body;
   import §1B§.b2Fixture;
   import §9i§.b2Settings;
   import §9i§.b2internal;
   import §]7§.b2Collision;
   import §]q§.b2CircleShape;
   import §]q§.b2PolygonShape;
   import §]q§.b2Shape;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function § %§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §%_§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §<! §(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§<! §(param1,param2);
         b2Settings.b2Assert(param1.§#+§() == b2Shape.§1!N§);
         b2Settings.b2Assert(param2.§#+§() == b2Shape.§9!X§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::7c.m_body;
         var _loc2_:b2Body = b2internal::!!@.m_body;
         b2Collision.§6!Q§(b2internal::?!N,b2internal::7c.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::!!@.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
