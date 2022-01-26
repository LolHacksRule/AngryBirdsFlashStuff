package §_-fl§
{
   import §_-00B§.b2Body;
   import §_-00B§.b2Fixture;
   import §_-Jf§.b2internal;
   import §_-Kz§.b2Manifold;
   import §_-OY§.b2CircleShape;
   import §_-OY§.b2EdgeShape;
   import §_-Vn§.b2Transform;
   
   use namespace b2internal;
   
   public class b2EdgeAndCircleContact extends b2Contact
   {
       
      
      public function b2EdgeAndCircleContact()
      {
         super();
      }
      
      public static function §null §(param1:*) : b2Contact
      {
         return new b2EdgeAndCircleContact();
      }
      
      public static function §_-TB§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §_-ej§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§_-ej§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::_-a9.GetBody();
         var _loc2_:b2Body = b2internal::_-2b.GetBody();
         this.§_-4X§(b2internal::_-LF,b2internal::_-a9.GetShape() as b2EdgeShape,_loc1_.m_xf,b2internal::_-2b.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
      
      private function §_-4X§(param1:b2Manifold, param2:b2EdgeShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
      }
   }
}
