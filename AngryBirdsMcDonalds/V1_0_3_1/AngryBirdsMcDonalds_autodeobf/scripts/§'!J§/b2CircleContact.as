package §'!J§
{
   import §&x§.b2Body;
   import §&x§.b2Fixture;
   import §-!T§.b2Collision;
   import §3o§.b2internal;
   import §8!b§.b2CircleShape;
   
   use namespace b2internal;
   
   public class b2CircleContact extends b2Contact
   {
       
      
      public function b2CircleContact()
      {
         super();
      }
      
      public static function §;!1§(param1:*) : b2Contact
      {
         return new b2CircleContact();
      }
      
      public static function § ;§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §?r§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§?r§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal:: `.GetBody();
         var _loc2_:b2Body = b2internal::"!9.GetBody();
         b2Collision.§-P§(b2internal::1z,b2internal:: `.GetShape() as b2CircleShape,_loc1_.m_xf,b2internal::"!9.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
