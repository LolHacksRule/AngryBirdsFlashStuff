package §_-0DM§
{
   import §_-03n§.b2CircleShape;
   import §_-03n§.b2PolygonShape;
   import §_-03n§.b2Shape;
   import §_-5§.b2Settings;
   import §_-5§.b2internal;
   import §_-aU§.b2Body;
   import §_-aU§.b2Fixture;
   import §_-gE§.b2Collision;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function §_-xb§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §_-01§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §_-8Y§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§_-8Y§(param1,param2);
         b2Settings.b2Assert(param1.§_-oF§() == b2Shape.§_-04L§);
         b2Settings.b2Assert(param2.§_-oF§() == b2Shape.§_-rv§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::_-f-.m_body;
         var _loc2_:b2Body = b2internal::_-N-.m_body;
         b2Collision.§_-Wb§(b2internal::_-07u,b2internal::_-f-.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::_-N-.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
