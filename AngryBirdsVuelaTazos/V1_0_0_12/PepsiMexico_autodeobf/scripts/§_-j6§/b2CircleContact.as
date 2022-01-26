package §_-j6§
{
   import §_-Bt§.b2CircleShape;
   import §_-EH§.b2Body;
   import §_-EH§.b2Fixture;
   import §_-Nw§.b2Collision;
   import §_-sU§.b2internal;
   
   use namespace b2internal;
   
   public class b2CircleContact extends b2Contact
   {
       
      
      public function b2CircleContact()
      {
         super();
      }
      
      public static function §_-1Z§(param1:*) : b2Contact
      {
         return new b2CircleContact();
      }
      
      public static function §else§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §_-7h§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§_-7h§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::_-om.GetBody();
         var _loc2_:b2Body = b2internal::_-X8.GetBody();
         b2Collision.§_-OD§(b2internal::_-x9,b2internal::_-om.GetShape() as b2CircleShape,_loc1_.m_xf,b2internal::_-X8.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
