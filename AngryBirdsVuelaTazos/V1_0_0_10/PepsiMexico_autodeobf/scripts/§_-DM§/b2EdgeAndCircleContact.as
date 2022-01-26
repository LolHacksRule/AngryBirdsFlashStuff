package §_-DM§
{
   import §_-Et§.b2Manifold;
   import §_-I2§.b2CircleShape;
   import §_-I2§.b2EdgeShape;
   import §_-Zl§.b2Transform;
   import §_-rg§.b2Body;
   import §_-rg§.b2Fixture;
   import §_-uS§.b2internal;
   
   use namespace b2internal;
   
   public class b2EdgeAndCircleContact extends b2Contact
   {
       
      
      public function b2EdgeAndCircleContact()
      {
         super();
      }
      
      public static function §_-i-§(param1:*) : b2Contact
      {
         return new b2EdgeAndCircleContact();
      }
      
      public static function §_-1m§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §_-t3§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§_-t3§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::_-di.GetBody();
         var _loc2_:b2Body = b2internal::include.GetBody();
         this.§_-2k§(b2internal::_-R2,b2internal::_-di.GetShape() as b2EdgeShape,_loc1_.m_xf,b2internal::include.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
      
      private function §_-2k§(param1:b2Manifold, param2:b2EdgeShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
      }
   }
}
