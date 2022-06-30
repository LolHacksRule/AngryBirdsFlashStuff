package §=0§
{
   import §!4§.b2Manifold;
   import §3!R§.b2Body;
   import §3!R§.b2Fixture;
   import §6A§.b2Transform;
   import §7q§.b2CircleShape;
   import §7q§.b2EdgeShape;
   import §^P§.b2internal;
   
   use namespace b2internal;
   
   public class b2EdgeAndCircleContact extends b2Contact
   {
       
      
      public function b2EdgeAndCircleContact()
      {
         super();
      }
      
      public static function §;O§(param1:*) : b2Contact
      {
         return new b2EdgeAndCircleContact();
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
         this.§3!E§(b2internal::1`,b2internal::&4.GetShape() as b2EdgeShape,_loc1_.m_xf,b2internal::;,.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
      
      private function §3!E§(param1:b2Manifold, param2:b2EdgeShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
      }
   }
}
