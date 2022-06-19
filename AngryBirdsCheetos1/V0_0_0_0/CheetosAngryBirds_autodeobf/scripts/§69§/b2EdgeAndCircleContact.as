package §69§
{
   import § G§.b2Manifold;
   import §&!"§.b2Body;
   import §&!"§.b2Fixture;
   import §-!C§.b2CircleShape;
   import §-!C§.b2EdgeShape;
   import §9"§.b2Transform;
   import §>!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2EdgeAndCircleContact extends b2Contact
   {
       
      
      public function b2EdgeAndCircleContact()
      {
         super();
      }
      
      public static function §?!@§(param1:*) : b2Contact
      {
         return new b2EdgeAndCircleContact();
      }
      
      public static function §4!L§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §"o§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§"o§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::<D.GetBody();
         var _loc2_:b2Body = b2internal::+p.GetBody();
         this.§4!#§(b2internal::'&,b2internal::<D.GetShape() as b2EdgeShape,_loc1_.m_xf,b2internal::+p.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
      
      private function §4!#§(param1:b2Manifold, param2:b2EdgeShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
      }
   }
}
