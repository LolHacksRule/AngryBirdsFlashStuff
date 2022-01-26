package §_-a5§
{
   import §_-Iw§.b2Body;
   import §_-Iw§.b2Fixture;
   import §_-Kt§.b2CircleShape;
   import §_-lh§.b2internal;
   import §_-qg§.b2Collision;
   
   use namespace b2internal;
   
   public class b2CircleContact extends b2Contact
   {
       
      
      public function b2CircleContact()
      {
         super();
      }
      
      public static function §_-xO§(param1:*) : b2Contact
      {
         return new b2CircleContact();
      }
      
      public static function §_-2A§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §_-i0§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§_-i0§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::_-NZ.GetBody();
         var _loc2_:b2Body = b2internal::_-xL.GetBody();
         b2Collision.§_-QS§(b2internal::_-Xg,b2internal::_-NZ.GetShape() as b2CircleShape,_loc1_.m_xf,b2internal::_-xL.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
