package §[-§
{
   import §!!#§.b2Collision;
   import §4! §.b2internal;
   import §9t§.b2Body;
   import §9t§.b2Fixture;
   import §[!E§.b2CircleShape;
   
   use namespace b2internal;
   
   public class b2CircleContact extends b2Contact
   {
       
      
      public function b2CircleContact()
      {
         super();
      }
      
      public static function §1P§(param1:*) : b2Contact
      {
         return new b2CircleContact();
      }
      
      public static function §88§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function § Z§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§ Z§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::@! .GetBody();
         var _loc2_:b2Body = b2internal::>d.GetBody();
         b2Collision.§2!^§(b2internal::@!O,b2internal::@! .GetShape() as b2CircleShape,_loc1_.m_xf,b2internal::>d.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
