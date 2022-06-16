package §`!k§
{
   import §"#i§.b2CircleShape;
   import §'"$§.b2Collision;
   import §,!s§.b2internal;
   import §4"O§.b2Body;
   import §4"O§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2CircleContact extends b2Contact
   {
       
      
      public function b2CircleContact()
      {
         super();
      }
      
      public static function §4"T§(param1:*) : b2Contact
      {
         return new b2CircleContact();
      }
      
      public static function §`"e§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §1!M§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§1!M§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::##y.GetBody();
         var _loc2_:b2Body = b2internal::0!m.GetBody();
         b2Collision.§%#u§(b2internal::1"j,b2internal::##y.GetShape() as b2CircleShape,_loc1_.m_xf,b2internal::0!m.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
