package §,k§
{
   import §-g§.b2Collision;
   import §5!]§.b2CircleShape;
   import §5!]§.b2PolygonShape;
   import §5!]§.b2Shape;
   import §7!q§.b2Body;
   import §7!q§.b2Fixture;
   import §[M§.b2Settings;
   import §[M§.b2internal;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function §="1§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §,"0§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §;!V§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§;!V§(param1,param2);
         b2Settings.b2Assert(param1.§7!r§() == b2Shape.§8!3§);
         b2Settings.b2Assert(param2.§7!r§() == b2Shape.§%_§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::?a.m_body;
         var _loc2_:b2Body = b2internal::;!S.m_body;
         b2Collision.§ !P§(b2internal::28,b2internal::?a.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::;!S.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
