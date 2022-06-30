package §=0§
{
   import §!4§.b2Collision;
   import §3!R§.b2Body;
   import §3!R§.b2Fixture;
   import §7q§.b2CircleShape;
   import §^P§.b2internal;
   
   use namespace b2internal;
   
   public class b2CircleContact extends b2Contact
   {
       
      
      public function b2CircleContact()
      {
         super();
      }
      
      public static function §;O§(param1:*) : b2Contact
      {
         return new b2CircleContact();
      }
      
      public static function §;!^§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §;!C§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§;!C§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::&4.GetBody();
         var _loc2_:b2Body = b2internal::;,.GetBody();
         b2Collision.§5i§(b2internal::1`,b2internal::&4.GetShape() as b2CircleShape,_loc1_.m_xf,b2internal::;,.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
