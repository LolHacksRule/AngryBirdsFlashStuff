package §=_§
{
   import § !_§.b2Transform;
   import §+&§.b2internal;
   import §-!!§.b2CircleShape;
   import §-!!§.b2EdgeShape;
   import §^!Z§.b2Body;
   import §^!Z§.b2Fixture;
   import §^t§.b2Manifold;
   
   use namespace b2internal;
   
   public class b2EdgeAndCircleContact extends b2Contact
   {
       
      
      public function b2EdgeAndCircleContact()
      {
         super();
      }
      
      public static function §8b§(param1:*) : b2Contact
      {
         return new b2EdgeAndCircleContact();
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
         this.§%"§(b2internal::%`,b2internal::"!V.GetShape() as b2EdgeShape,_loc1_.m_xf,b2internal::[!.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
      
      private function §%"§(param1:b2Manifold, param2:b2EdgeShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
      }
   }
}
