package §4]§
{
   import §#I§.b2Body;
   import §#I§.b2Fixture;
   import §3b§.b2CircleShape;
   import §>!Z§.b2Collision;
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2CircleContact extends b2Contact
   {
       
      
      public function b2CircleContact()
      {
         super();
      }
      
      public static function §1!Y§(param1:*) : b2Contact
      {
         return new b2CircleContact();
      }
      
      public static function §=_§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §2I§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§2I§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::]V.GetBody();
         var _loc2_:b2Body = b2internal::!j.GetBody();
         b2Collision.§,!C§(b2internal::7!l,b2internal::]V.GetShape() as b2CircleShape,_loc1_.m_xf,b2internal::!j.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
