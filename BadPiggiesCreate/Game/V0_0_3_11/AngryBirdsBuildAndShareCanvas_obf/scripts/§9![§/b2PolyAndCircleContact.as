package §9![§
{
   import § 6§.b2Collision;
   import §1!3§.b2CircleShape;
   import §1!3§.b2PolygonShape;
   import §1!3§.b2Shape;
   import §7z§.b2Body;
   import §7z§.b2Fixture;
   import §^+§.b2Settings;
   import §^+§.b2internal;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function §7T§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §#"&§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §^m§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§^m§(param1,param2);
         b2Settings.b2Assert(param1.§,!B§() == b2Shape.§4!Q§);
         b2Settings.b2Assert(param2.§,!B§() == b2Shape.§'6§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::2G.m_body;
         var _loc2_:b2Body = b2internal::]![.m_body;
         b2Collision.§5"$§(b2internal::7"-,b2internal::2G.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::]![.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
