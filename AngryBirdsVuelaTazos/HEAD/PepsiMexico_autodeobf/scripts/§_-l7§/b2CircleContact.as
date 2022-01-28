package §_-l7§
{
   import §_-Pu§.b2CircleShape;
   import §_-mg§.b2Collision;
   import §_-rz§.b2internal;
   import §_-vk§.b2Body;
   import §_-vk§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2CircleContact extends b2Contact
   {
       
      
      public function b2CircleContact()
      {
         super();
      }
      
      public static function §_-gE§(param1:*) : b2Contact
      {
         return new b2CircleContact();
      }
      
      public static function §_-6A§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §_-2d§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§_-2d§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::_-lE.GetBody();
         var _loc2_:b2Body = b2internal::_-Qr.GetBody();
         b2Collision.§_-mx§(b2internal::_-tS,b2internal::_-lE.GetShape() as b2CircleShape,_loc1_.m_xf,b2internal::_-Qr.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
