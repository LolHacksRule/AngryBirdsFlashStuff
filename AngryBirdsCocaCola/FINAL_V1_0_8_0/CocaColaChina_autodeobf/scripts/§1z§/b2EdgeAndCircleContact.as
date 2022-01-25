package §1z§
{
   import § Y§.b2CircleShape;
   import § Y§.b2EdgeShape;
   import §6V§.b2Transform;
   import §<!L§.b2Body;
   import §<!L§.b2Fixture;
   import §?F§.b2Manifold;
   import §[!$§.b2internal;
   
   use namespace b2internal;
   
   public class b2EdgeAndCircleContact extends b2Contact
   {
       
      
      public function b2EdgeAndCircleContact()
      {
         super();
      }
      
      public static function §8y§(param1:*) : b2Contact
      {
         return new b2EdgeAndCircleContact();
      }
      
      public static function §#2§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §>[§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§>[§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::[![.GetBody();
         var _loc2_:b2Body = b2internal::1J.GetBody();
         this.§][§(b2internal::%Q,b2internal::[![.GetShape() as b2EdgeShape,_loc1_.m_xf,b2internal::1J.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
      
      private function §][§(param1:b2Manifold, param2:b2EdgeShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
      }
   }
}
