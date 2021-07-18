package §8Y§
{
   import §&U§.b2CircleShape;
   import §&U§.b2EdgeShape;
   import §0!G§.b2Transform;
   import §2!F§.b2internal;
   import §9"§.b2Manifold;
   import §`j§.b2Body;
   import §`j§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2EdgeAndCircleContact extends b2Contact
   {
       
      
      public function b2EdgeAndCircleContact()
      {
         super();
      }
      
      public static function §>y§(param1:*) : b2Contact
      {
         return new b2EdgeAndCircleContact();
      }
      
      public static function §;@§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §8j§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§8j§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::1!,.GetBody();
         var _loc2_:b2Body = b2internal::7+.GetBody();
         this.§1!D§(b2internal::&C,b2internal::1!,.GetShape() as b2EdgeShape,_loc1_.m_xf,b2internal::7+.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
      
      private function §1!D§(param1:b2Manifold, param2:b2EdgeShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
      }
   }
}
