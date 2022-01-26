package §_-cw§
{
   import §_-26§.b2CircleShape;
   import §_-26§.b2EdgeShape;
   import §_-WW§.b2Body;
   import §_-WW§.b2Fixture;
   import §_-dx§.b2Transform;
   import §_-iO§.b2internal;
   import §_-tK§.b2Manifold;
   
   use namespace b2internal;
   
   public class b2EdgeAndCircleContact extends b2Contact
   {
       
      
      public function b2EdgeAndCircleContact()
      {
         super();
      }
      
      public static function §_-JU§(param1:*) : b2Contact
      {
         return new b2EdgeAndCircleContact();
      }
      
      public static function §_-Hh§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §_-Mm§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§_-Mm§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::_-Ny.GetBody();
         var _loc2_:b2Body = b2internal::_-83.GetBody();
         this.§_-Oq§(b2internal::_-Er,b2internal::_-Ny.GetShape() as b2EdgeShape,_loc1_.m_xf,b2internal::_-83.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
      
      private function §_-Oq§(param1:b2Manifold, param2:b2EdgeShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
      }
   }
}
