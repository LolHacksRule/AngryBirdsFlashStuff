package §!D§
{
   import §4!!§.b2Settings;
   import §4!!§.b2internal;
   import §48§.b2Body;
   import §48§.b2Fixture;
   import §55§.b2Collision;
   import §<!`§.b2CircleShape;
   import §<!`§.b2PolygonShape;
   import §<!`§.b2Shape;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function §?!Q§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §'S§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §<t§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§<t§(param1,param2);
         b2Settings.b2Assert(param1.§"r§() == b2Shape.§@!#§);
         b2Settings.b2Assert(param2.§"r§() == b2Shape.§'!U§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::3t.m_body;
         var _loc2_:b2Body = b2internal::?!p.m_body;
         b2Collision.§>!2§(b2internal::@! ,b2internal::3t.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::?!p.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
