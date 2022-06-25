package §_-0DM§
{
   import §_-03n§.b2CircleShape;
   import §_-5§.b2internal;
   import §_-aU§.b2Body;
   import §_-aU§.b2Fixture;
   import §_-gE§.b2Collision;
   
   use namespace b2internal;
   
   public class b2CircleContact extends b2Contact
   {
       
      
      public function b2CircleContact()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §_-xb§(param1:*) : b2Contact
      {
         return new b2CircleContact();
      }
      
      public static function §_-01§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §_-8Y§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super.§_-8Y§(param1,param2);
         }
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:b2Body = b2internal::_-f-.GetBody();
         var _loc2_:b2Body = b2internal::_-N-.GetBody();
         if(_loc4_)
         {
            b2Collision.§_-YC§(b2internal::_-07u,b2internal::_-f-.GetShape() as b2CircleShape,_loc1_.m_xf,b2internal::_-N-.GetShape() as b2CircleShape,_loc2_.m_xf);
         }
      }
   }
}
