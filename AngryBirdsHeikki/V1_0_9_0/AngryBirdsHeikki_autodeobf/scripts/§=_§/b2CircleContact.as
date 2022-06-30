package §=_§
{
   import §+&§.b2internal;
   import §-!!§.b2CircleShape;
   import §^!Z§.b2Body;
   import §^!Z§.b2Fixture;
   import §^t§.b2Collision;
   
   use namespace b2internal;
   
   public class b2CircleContact extends b2Contact
   {
       
      
      public function b2CircleContact()
      {
         super();
      }
      
      public static function §8b§(param1:*) : b2Contact
      {
         return new b2CircleContact();
      }
      
      public static function §<a§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §=s§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§=s§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::"!V.GetBody();
         var _loc2_:b2Body = b2internal::[!.GetBody();
         b2Collision.§%V§(b2internal::%`,b2internal::"!V.GetShape() as b2CircleShape,_loc1_.m_xf,b2internal::[!.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
