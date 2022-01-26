package §with§
{
   import §_-b4§.b2internal;
   import §_-cG§.b2CircleShape;
   import §_-cG§.b2EdgeShape;
   import §_-cP§.b2Transform;
   import §_-yI§.b2Manifold;
   import §try§.b2Body;
   import §try§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2EdgeAndCircleContact extends b2Contact
   {
       
      
      public function b2EdgeAndCircleContact()
      {
         super();
      }
      
      public static function §_-JJ§(param1:*) : b2Contact
      {
         return new b2EdgeAndCircleContact();
      }
      
      public static function §_-y3§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §_-Ji§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§_-Ji§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::_-6B.GetBody();
         var _loc2_:b2Body = b2internal::_-lO.GetBody();
         this.§_-7B§(b2internal::_-Fp,b2internal::_-6B.GetShape() as b2EdgeShape,_loc1_.m_xf,b2internal::_-lO.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
      
      private function §_-7B§(param1:b2Manifold, param2:b2EdgeShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
      }
   }
}
