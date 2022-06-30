package §%E§
{
   import §+d§.b2Body;
   import §+d§.b2Fixture;
   import §6%§.b2Settings;
   import §6%§.b2internal;
   import §8`§.b2CircleShape;
   import §8`§.b2PolygonShape;
   import §8`§.b2Shape;
   import §=n§.b2Collision;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function §2!f§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §9!1§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §"!K§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§"!K§(param1,param2);
         b2Settings.b2Assert(param1.§,!d§() == b2Shape.§0B§);
         b2Settings.b2Assert(param2.§,!d§() == b2Shape.§%!@§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::[!d.m_body;
         var _loc2_:b2Body = b2internal::#!^.m_body;
         b2Collision.§[z§(b2internal::>!b,b2internal::[!d.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::#!^.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
