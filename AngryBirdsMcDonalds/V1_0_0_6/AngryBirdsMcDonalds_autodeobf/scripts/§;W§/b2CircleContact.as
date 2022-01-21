package §;W§
{
   import §%!h§.b2CircleShape;
   import §7!5§.b2Body;
   import §7!5§.b2Fixture;
   import §7!Y§.b2internal;
   import §8!n§.b2Collision;
   
   use namespace b2internal;
   
   public class b2CircleContact extends b2Contact
   {
       
      
      public function b2CircleContact()
      {
         super();
      }
      
      public static function §class§(param1:*) : b2Contact
      {
         return new b2CircleContact();
      }
      
      public static function §5^§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §?!;§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§?!;§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::,o.GetBody();
         var _loc2_:b2Body = b2internal::0-.GetBody();
         b2Collision.§'o§(b2internal::?Y,b2internal::,o.GetShape() as b2CircleShape,_loc1_.m_xf,b2internal::0-.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
