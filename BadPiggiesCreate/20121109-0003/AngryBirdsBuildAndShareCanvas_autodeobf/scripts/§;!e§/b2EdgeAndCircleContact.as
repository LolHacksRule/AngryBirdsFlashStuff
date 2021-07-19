package §;!e§
{
   import §"J§.b2Body;
   import §"J§.b2Fixture;
   import §%4§.b2Manifold;
   import §2k§.b2CircleShape;
   import §2k§.b2EdgeShape;
   import §<!a§.b2Transform;
   import §<";§.b2internal;
   
   use namespace b2internal;
   
   public class b2EdgeAndCircleContact extends b2Contact
   {
       
      
      public function b2EdgeAndCircleContact()
      {
         super();
      }
      
      public static function §`!P§(param1:*) : b2Contact
      {
         return new b2EdgeAndCircleContact();
      }
      
      public static function §3!0§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §+N§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§+N§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::9!<.GetBody();
         var _loc2_:b2Body = b2internal::%,.GetBody();
         this.§ K§(b2internal:: !",b2internal::9!<.GetShape() as b2EdgeShape,_loc1_.m_xf,b2internal::%,.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
      
      private function § K§(param1:b2Manifold, param2:b2EdgeShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
      }
   }
}
