package §>6§
{
   import §'!a§.b2Settings;
   import §'!a§.b2internal;
   import §4!W§.b2CircleShape;
   import §4!W§.b2PolygonShape;
   import §4!W§.b2Shape;
   import §9!K§.b2Body;
   import §9!K§.b2Fixture;
   import §;!Z§.b2Collision;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function §7;§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §7"'§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §2!U§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§2!U§(param1,param2);
         b2Settings.b2Assert(param1.§finally§() == b2Shape.§>b§);
         b2Settings.b2Assert(param2.§finally§() == b2Shape.§9t§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::1!g.m_body;
         var _loc2_:b2Body = b2internal::@4.m_body;
         b2Collision.§+"#§(b2internal::-"7,b2internal::1!g.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::@4.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
