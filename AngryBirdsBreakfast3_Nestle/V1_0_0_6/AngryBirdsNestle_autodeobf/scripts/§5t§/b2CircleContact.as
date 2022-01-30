package §5t§
{
   import §!;§.b2Collision;
   import §,v§.b2Body;
   import §,v§.b2Fixture;
   import §3!4§.b2CircleShape;
   import §@h§.b2internal;
   
   use namespace b2internal;
   
   public class b2CircleContact extends b2Contact
   {
       
      
      public function b2CircleContact()
      {
         super();
      }
      
      public static function §@Q§(param1:*) : b2Contact
      {
         return new b2CircleContact();
      }
      
      public static function §#!N§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §6m§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§6m§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::6!$.GetBody();
         var _loc2_:b2Body = b2internal::37.GetBody();
         b2Collision.§=!@§(b2internal::^I,b2internal::6!$.GetShape() as b2CircleShape,_loc1_.m_xf,b2internal::37.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
