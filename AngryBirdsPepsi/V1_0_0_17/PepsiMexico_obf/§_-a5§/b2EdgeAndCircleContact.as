package §_-a5§
{
   import §_-Iw§.b2Body;
   import §_-Iw§.b2Fixture;
   import §_-Ja§.b2Transform;
   import §_-Kt§.b2CircleShape;
   import §_-Kt§.b2EdgeShape;
   import §_-lh§.b2internal;
   import §_-qg§.b2Manifold;
   
   use namespace b2internal;
   
   public class b2EdgeAndCircleContact extends b2Contact
   {
       
      
      public function b2EdgeAndCircleContact()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §_-xO§(param1:*) : b2Contact
      {
         return new b2EdgeAndCircleContact();
      }
      
      public static function §_-2A§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §_-i0§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super.§_-i0§(param1,param2);
         }
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:b2Body = b2internal::_-NZ.GetBody();
         var _loc2_:b2Body = b2internal::_-xL.GetBody();
         if(_loc3_ || _loc3_)
         {
            this.§_-Bn§(b2internal::_-Xg,b2internal::_-NZ.GetShape() as b2EdgeShape,_loc1_.m_xf,b2internal::_-xL.GetShape() as b2CircleShape,_loc2_.m_xf);
         }
      }
      
      private function §_-Bn§(param1:b2Manifold, param2:b2EdgeShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
      }
   }
}
