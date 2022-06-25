package §7a§
{
   import § D§.b2Body;
   import § D§.b2Fixture;
   import §&!-§.b2Manifold;
   import §0!'§.b2CircleShape;
   import §0!'§.b2EdgeShape;
   import §8>§.b2Transform;
   import §;u§.b2internal;
   
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
      
      public static function §5=§(param1:*) : b2Contact
      {
         return new b2EdgeAndCircleContact();
      }
      
      public static function §"L§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §#[§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            super.§#[§(param1,param2);
         }
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:b2Body = b2internal::48.GetBody();
         var _loc2_:b2Body = b2internal::[=.GetBody();
         if(!(_loc3_ && this))
         {
            this.§,K§(b2internal::?K,b2internal::48.GetShape() as b2EdgeShape,_loc1_.m_xf,b2internal::[=.GetShape() as b2CircleShape,_loc2_.m_xf);
         }
      }
      
      private function §,K§(param1:b2Manifold, param2:b2EdgeShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
      }
   }
}
