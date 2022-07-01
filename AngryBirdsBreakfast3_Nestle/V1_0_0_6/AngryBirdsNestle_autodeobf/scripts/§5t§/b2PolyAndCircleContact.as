package §5t§
{
   import §!;§.b2Collision;
   import §,v§.b2Body;
   import §,v§.b2Fixture;
   import §3!4§.b2CircleShape;
   import §3!4§.b2PolygonShape;
   import §3!4§.b2Shape;
   import §@h§.b2Settings;
   import §@h§.b2internal;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function §@Q§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §#!N§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §6m§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§6m§(param1,param2);
         b2Settings.b2Assert(param1.§@!D§() == b2Shape.§7p§);
         b2Settings.b2Assert(param2.§@!D§() == b2Shape.§3t§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::6!$.m_body;
         var _loc2_:b2Body = b2internal::37.m_body;
         b2Collision.§[Z§(b2internal::^I,b2internal::6!$.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::37.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
