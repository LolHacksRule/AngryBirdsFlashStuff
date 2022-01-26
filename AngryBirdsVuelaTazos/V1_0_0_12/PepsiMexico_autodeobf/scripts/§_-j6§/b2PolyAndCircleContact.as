package §_-j6§
{
   import §_-Bt§.b2CircleShape;
   import §_-Bt§.b2PolygonShape;
   import §_-Bt§.b2Shape;
   import §_-EH§.b2Body;
   import §_-EH§.b2Fixture;
   import §_-Nw§.b2Collision;
   import §_-sU§.b2Settings;
   import §_-sU§.b2internal;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function §_-1Z§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §else§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §_-7h§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§_-7h§(param1,param2);
         b2Settings.b2Assert(param1.§_-7L§() == b2Shape.§_-Tn§);
         b2Settings.b2Assert(param2.§_-7L§() == b2Shape.§_-1M§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::_-om.m_body;
         var _loc2_:b2Body = b2internal::_-X8.m_body;
         b2Collision.§_-C4§(b2internal::_-x9,b2internal::_-om.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::_-X8.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
