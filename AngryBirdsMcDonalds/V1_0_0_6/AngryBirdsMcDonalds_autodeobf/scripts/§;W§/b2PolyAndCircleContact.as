package §;W§
{
   import §%!h§.b2CircleShape;
   import §%!h§.b2PolygonShape;
   import §%!h§.b2Shape;
   import §7!5§.b2Body;
   import §7!5§.b2Fixture;
   import §7!Y§.b2Settings;
   import §7!Y§.b2internal;
   import §8!n§.b2Collision;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function §class§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §5^§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §?!;§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§?!;§(param1,param2);
         b2Settings.b2Assert(param1.§&!B§() == b2Shape.§]!k§);
         b2Settings.b2Assert(param2.§&!B§() == b2Shape.§9D§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::,o.m_body;
         var _loc2_:b2Body = b2internal::0-.m_body;
         b2Collision.§?s§(b2internal::?Y,b2internal::,o.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::0-.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
