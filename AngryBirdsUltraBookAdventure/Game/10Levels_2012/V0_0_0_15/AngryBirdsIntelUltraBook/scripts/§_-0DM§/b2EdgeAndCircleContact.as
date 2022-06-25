package §_-0DM§
{
   import §_-03n§.b2CircleShape;
   import §_-03n§.b2EdgeShape;
   import §_-5§.b2internal;
   import §_-Yp§.b2Transform;
   import §_-aU§.b2Body;
   import §_-aU§.b2Fixture;
   import §_-gE§.b2Manifold;
   
   use namespace b2internal;
   
   public class b2EdgeAndCircleContact extends b2Contact
   {
       
      
      public function b2EdgeAndCircleContact()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
         }
      }
      
      public static function §_-xb§(param1:*) : b2Contact
      {
         return new b2EdgeAndCircleContact();
      }
      
      public static function §_-01§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §_-8Y§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            super.§_-8Y§(param1,param2);
         }
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:b2Body = b2internal::_-f-.GetBody();
         var _loc2_:b2Body = b2internal::_-N-.GetBody();
         if(!(_loc3_ && this))
         {
            this.§if§(b2internal::_-07u,b2internal::_-f-.GetShape() as b2EdgeShape,_loc1_.m_xf,b2internal::_-N-.GetShape() as b2CircleShape,_loc2_.m_xf);
         }
      }
      
      private function §if§(param1:b2Manifold, param2:b2EdgeShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
      }
   }
}
