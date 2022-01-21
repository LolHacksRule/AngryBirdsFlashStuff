package §>!'§
{
   import §1B§.b2Body;
   import §1B§.b2Fixture;
   import §9i§.b2internal;
   import §]7§.b2Collision;
   import §]q§.b2CircleShape;
   
   use namespace b2internal;
   
   public class b2CircleContact extends b2Contact
   {
       
      
      public function b2CircleContact()
      {
         super();
      }
      
      public static function § %§(param1:*) : b2Contact
      {
         return new b2CircleContact();
      }
      
      public static function §%_§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §<! §(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§<! §(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::7c.GetBody();
         var _loc2_:b2Body = b2internal::!!@.GetBody();
         b2Collision.§`a§(b2internal::?!N,b2internal::7c.GetShape() as b2CircleShape,_loc1_.m_xf,b2internal::!!@.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
