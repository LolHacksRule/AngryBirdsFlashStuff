package §+!,§
{
   import §%!#§.b2Collision;
   import §1x§.b2Body;
   import §1x§.b2Fixture;
   import §9!s§.b2Settings;
   import §9!s§.b2internal;
   import §[!L§.b2CircleShape;
   import §[!L§.b2PolygonShape;
   import §[!L§.b2Shape;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function §0"]§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §%c§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §1"x§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§1"x§(param1,param2);
         b2Settings.b2Assert(param1.§ "N§() == b2Shape.§2!c§);
         b2Settings.b2Assert(param2.§ "N§() == b2Shape.§">§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::0">.m_body;
         var _loc2_:b2Body = b2internal::'#'.m_body;
         b2Collision.§-!i§(b2internal::&"',b2internal::0">.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::'#'.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
