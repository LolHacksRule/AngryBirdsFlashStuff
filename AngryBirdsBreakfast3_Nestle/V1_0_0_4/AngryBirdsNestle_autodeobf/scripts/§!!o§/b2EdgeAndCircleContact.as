package §!!o§
{
   import §,P§.b2Manifold;
   import §-%§.b2Transform;
   import §9"5§.b2Body;
   import §9"5§.b2Fixture;
   import §>!R§.b2internal;
   import §>"&§.b2CircleShape;
   import §>"&§.b2EdgeShape;
   
   use namespace b2internal;
   
   public class b2EdgeAndCircleContact extends b2Contact
   {
       
      
      public function b2EdgeAndCircleContact()
      {
         super();
      }
      
      public static function §0!8§(param1:*) : b2Contact
      {
         return new b2EdgeAndCircleContact();
      }
      
      public static function §&`§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §=a§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§=a§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::4<.GetBody();
         var _loc2_:b2Body = b2internal::6%.GetBody();
         this.§@e§(b2internal::@"$,b2internal::4<.GetShape() as b2EdgeShape,_loc1_.m_xf,b2internal::6%.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
      
      private function §@e§(param1:b2Manifold, param2:b2EdgeShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
      }
   }
}
