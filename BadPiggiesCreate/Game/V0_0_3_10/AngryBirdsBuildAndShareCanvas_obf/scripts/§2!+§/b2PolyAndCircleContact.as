package §2!+§
{
   import §!S§.b2Settings;
   import §!S§.b2internal;
   import §1!1§.b2Collision;
   import §6U§.b2CircleShape;
   import §6U§.b2PolygonShape;
   import §6U§.b2Shape;
   import §`]§.b2Body;
   import §`]§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function §6t§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §=!!§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §+Q§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§+Q§(param1,param2);
         b2Settings.b2Assert(param1.§8!d§() == b2Shape.§`"6§);
         b2Settings.b2Assert(param2.§8!d§() == b2Shape.§^C§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::"!1.m_body;
         var _loc2_:b2Body = b2internal::5!K.m_body;
         b2Collision.§>!f§(b2internal::^!?,b2internal::"!1.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::5!K.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
