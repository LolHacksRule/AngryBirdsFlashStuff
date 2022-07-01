package §5t§
{
   import §!;§.b2Manifold;
   import §,v§.b2Body;
   import §,v§.b2Fixture;
   import §-!A§.b2Transform;
   import §3!4§.b2CircleShape;
   import §3!4§.b2EdgeShape;
   import §@h§.b2internal;
   
   use namespace b2internal;
   
   public class b2EdgeAndCircleContact extends b2Contact
   {
       
      
      public function b2EdgeAndCircleContact()
      {
         super();
      }
      
      public static function §@Q§(param1:*) : b2Contact
      {
         return new b2EdgeAndCircleContact();
      }
      
      public static function §#!N§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §6m§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§6m§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::6!$.GetBody();
         var _loc2_:b2Body = b2internal::37.GetBody();
         this.§]4§(b2internal::^I,b2internal::6!$.GetShape() as b2EdgeShape,_loc1_.m_xf,b2internal::37.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
      
      private function §]4§(param1:b2Manifold, param2:b2EdgeShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
      }
   }
}
