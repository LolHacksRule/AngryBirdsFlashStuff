package §with§
{
   import §_-b4§.b2internal;
   import §_-cG§.b2PolygonShape;
   import §_-yI§.b2Collision;
   import §try§.b2Body;
   import §try§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2PolygonContact extends b2Contact
   {
       
      
      public function b2PolygonContact()
      {
         super();
      }
      
      public static function §_-JJ§(param1:*) : b2Contact
      {
         return new b2PolygonContact();
      }
      
      public static function §_-y3§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §_-Ji§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§_-Ji§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::_-6B.GetBody();
         var _loc2_:b2Body = b2internal::_-lO.GetBody();
         b2Collision.§ try§(b2internal::_-Fp,b2internal::_-6B.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::_-lO.GetShape() as b2PolygonShape,_loc2_.m_xf);
      }
   }
}
