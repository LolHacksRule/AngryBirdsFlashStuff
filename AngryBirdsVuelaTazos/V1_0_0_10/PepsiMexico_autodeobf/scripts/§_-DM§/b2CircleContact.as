package §_-DM§
{
   import §_-Et§.b2Collision;
   import §_-I2§.b2CircleShape;
   import §_-rg§.b2Body;
   import §_-rg§.b2Fixture;
   import §_-uS§.b2internal;
   
   use namespace b2internal;
   
   public class b2CircleContact extends b2Contact
   {
       
      
      public function b2CircleContact()
      {
         super();
      }
      
      public static function §_-i-§(param1:*) : b2Contact
      {
         return new b2CircleContact();
      }
      
      public static function §_-1m§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §_-t3§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§_-t3§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::_-di.GetBody();
         var _loc2_:b2Body = b2internal::include.GetBody();
         b2Collision.§_-9M§(b2internal::_-R2,b2internal::_-di.GetShape() as b2CircleShape,_loc1_.m_xf,b2internal::include.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
