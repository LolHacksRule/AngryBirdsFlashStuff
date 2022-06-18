package §43§
{
   import §#b§.b2CircleShape;
   import §#b§.b2PolygonShape;
   import §#b§.b2Shape;
   import §%!B§.b2Collision;
   import §[x§.b2Body;
   import §[x§.b2Fixture;
   import §^<§.b2Settings;
   import §^<§.b2internal;
   
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
      
      public static function §58§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §^5§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§^5§(param1,param2);
         b2Settings.b2Assert(param1.§=!,§() == b2Shape.§2f§);
         b2Settings.b2Assert(param2.§=!,§() == b2Shape.§,_§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::1!I.m_body;
         var _loc2_:b2Body = b2internal::1i.m_body;
         b2Collision.§5K§(b2internal::2',b2internal::1!I.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::1i.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
