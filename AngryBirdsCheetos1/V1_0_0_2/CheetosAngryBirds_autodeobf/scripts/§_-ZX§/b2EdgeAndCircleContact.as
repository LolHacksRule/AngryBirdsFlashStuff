package §_-ZX§
{
   import § if§.b2CircleShape;
   import § if§.b2EdgeShape;
   import §_-43§.b2Body;
   import §_-43§.b2Fixture;
   import §_-F2§.b2Transform;
   import §_-Jx§.b2Manifold;
   import §_-d6§.b2internal;
   
   use namespace b2internal;
   
   public class b2EdgeAndCircleContact extends b2Contact
   {
       
      
      public function b2EdgeAndCircleContact()
      {
         super();
      }
      
      public static function §_-6l§(param1:*) : b2Contact
      {
         return new b2EdgeAndCircleContact();
      }
      
      public static function §_-TI§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §_-1c§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§_-1c§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::_-pQ.GetBody();
         var _loc2_:b2Body = b2internal::_-mY.GetBody();
         this.§_-uP§(b2internal::_-GH,b2internal::_-pQ.GetShape() as b2EdgeShape,_loc1_.m_xf,b2internal::_-mY.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
      
      private function §_-uP§(param1:b2Manifold, param2:b2EdgeShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
      }
   }
}
