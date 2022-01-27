package §+!,§
{
   import §%!#§.b2Collision;
   import §1x§.b2Body;
   import §1x§.b2Fixture;
   import §9!s§.b2internal;
   import §[!L§.b2PolygonShape;
   
   use namespace b2internal;
   
   public class b2PolygonContact extends b2Contact
   {
       
      
      public function b2PolygonContact()
      {
         super();
      }
      
      public static function §0"]§(param1:*) : b2Contact
      {
         return new b2PolygonContact();
      }
      
      public static function §%c§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §1"x§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§1"x§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::0">.GetBody();
         var _loc2_:b2Body = b2internal::'#'.GetBody();
         b2Collision.§^"K§(b2internal::&"',b2internal::0">.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::'#'.GetShape() as b2PolygonShape,_loc2_.m_xf);
      }
   }
}
