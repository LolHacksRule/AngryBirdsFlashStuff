package §;T§
{
   import §"!9§.b2CircleShape;
   import §"!9§.b2EdgeShape;
   import §+S§.b2Body;
   import §+S§.b2Fixture;
   import §2"=§.b2Transform;
   import §5!o§.b2Manifold;
   import §=o§.b2internal;
   
   use namespace b2internal;
   
   public class b2EdgeAndCircleContact extends b2Contact
   {
       
      
      public function b2EdgeAndCircleContact()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §-!x§(param1:*) : b2Contact
      {
         return new b2EdgeAndCircleContact();
      }
      
      public static function §;&§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §%i§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            super.§%i§(param1,param2);
         }
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:b2Body = b2internal::5"$.GetBody();
         var _loc2_:b2Body = b2internal::dynamic.GetBody();
         if(_loc3_ || _loc1_)
         {
            this.§-O§(b2internal::=&,b2internal::5"$.GetShape() as b2EdgeShape,_loc1_.m_xf,b2internal::dynamic.GetShape() as b2CircleShape,_loc2_.m_xf);
         }
      }
      
      private function §-O§(param1:b2Manifold, param2:b2EdgeShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
      }
   }
}
