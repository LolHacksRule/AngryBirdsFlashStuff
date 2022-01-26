package §_-2V§
{
   import §_-8i§.b2CircleShape;
   import §_-SM§.b2internal;
   import §_-qW§.b2Body;
   import §_-qW§.b2Fixture;
   import §_-wZ§.b2Collision;
   
   use namespace b2internal;
   
   public class b2CircleContact extends b2Contact
   {
       
      
      public function b2CircleContact()
      {
         super();
      }
      
      public static function §_-0K§(param1:*) : b2Contact
      {
         return new b2CircleContact();
      }
      
      public static function §_-l6§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §_-ut§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§_-ut§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::_-ow.GetBody();
         var _loc2_:b2Body = b2internal::_-10.GetBody();
         b2Collision.§_-Qu§(b2internal::_-iN,b2internal::_-ow.GetShape() as b2CircleShape,_loc1_.m_xf,b2internal::_-10.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
