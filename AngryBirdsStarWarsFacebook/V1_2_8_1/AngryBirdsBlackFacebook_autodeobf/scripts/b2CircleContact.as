package
{
   import §1!2§.b2CircleShape;
   import §7!I§.b2internal;
   import §>"_§.b2Body;
   import §>"_§.b2Fixture;
   import §>r§.b2Collision;
   
   use namespace b2internal;
   
   public class b2CircleContact extends b2Contact
   {
       
      
      public function b2CircleContact()
      {
         super();
      }
      
      public static function § "a§(param1:*) : b2Contact
      {
         return new b2CircleContact();
      }
      
      public static function § !g§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §`"v§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§`"v§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::,"2.GetBody();
         var _loc2_:b2Body = b2internal::1M.GetBody();
         b2Collision.§6"l§(b2internal::-#3,b2internal::,"2.GetShape() as b2CircleShape,_loc1_.m_xf,b2internal::1M.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
