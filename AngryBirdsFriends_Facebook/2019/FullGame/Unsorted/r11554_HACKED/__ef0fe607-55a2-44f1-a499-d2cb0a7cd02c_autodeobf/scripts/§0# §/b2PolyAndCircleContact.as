package §0# §
{
   import §0J§.b2Collision;
   import §8#t§.b2Body;
   import §8#t§.b2Fixture;
   import §[!3§.b2Settings;
   import §[!3§.b2internal;
   import §]!o§.b2CircleShape;
   import §]!o§.b2PolygonShape;
   import §]!o§.b2Shape;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function §9b§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §-!2§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §9#t§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§9#t§(param1,param2);
         b2Settings.b2Assert(param1.§52§() == b2Shape.§]#6§);
         b2Settings.b2Assert(param2.§52§() == b2Shape.§=#T§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::7";.m_body;
         var _loc2_:b2Body = b2internal::4"J.m_body;
         b2Collision.§2!1§(b2internal::0!T,b2internal::7";.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::4"J.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
