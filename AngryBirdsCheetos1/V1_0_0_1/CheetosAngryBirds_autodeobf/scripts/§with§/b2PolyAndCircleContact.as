package §with§
{
   import §_-b4§.b2Settings;
   import §_-b4§.b2internal;
   import §_-cG§.b2CircleShape;
   import §_-cG§.b2PolygonShape;
   import §_-cG§.b2Shape;
   import §_-yI§.b2Collision;
   import §try§.b2Body;
   import §try§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function §_-JJ§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §_-y3§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §_-Ji§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§_-Ji§(param1,param2);
         b2Settings.b2Assert(param1.§_-sl§() == b2Shape.§_-fT§);
         b2Settings.b2Assert(param2.§_-sl§() == b2Shape.§_-RR§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::_-6B.m_body;
         var _loc2_:b2Body = b2internal::_-lO.m_body;
         b2Collision.§_-dN§(b2internal::_-Fp,b2internal::_-6B.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::_-lO.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
