package §_-ZX§
{
   import § if§.b2CircleShape;
   import §_-43§.b2Body;
   import §_-43§.b2Fixture;
   import §_-Jx§.b2Collision;
   import §_-d6§.b2internal;
   
   use namespace b2internal;
   
   public class b2CircleContact extends b2Contact
   {
       
      
      public function b2CircleContact()
      {
         super();
      }
      
      public static function §_-6l§(param1:*) : b2Contact
      {
         return new b2CircleContact();
      }
      
      public static function §_-TI§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §_-1c§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§_-1c§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::_-pQ.GetBody();
         var _loc2_:b2Body = b2internal::_-mY.GetBody();
         b2Collision.§_-Og§(b2internal::_-GH,b2internal::_-pQ.GetShape() as b2CircleShape,_loc1_.m_xf,b2internal::_-mY.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
