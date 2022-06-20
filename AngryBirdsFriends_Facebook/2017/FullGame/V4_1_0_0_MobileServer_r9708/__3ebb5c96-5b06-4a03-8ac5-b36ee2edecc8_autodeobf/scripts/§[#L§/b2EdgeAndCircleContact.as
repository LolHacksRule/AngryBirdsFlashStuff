package §[#L§
{
   import §%!9§.b2Transform;
   import §+#f§.b2CircleShape;
   import §+#f§.b2EdgeShape;
   import §1!+§.b2Body;
   import §1!+§.b2Fixture;
   import §7"^§.b2Manifold;
   import §9#K§.b2internal;
   
   use namespace b2internal;
   
   public class b2EdgeAndCircleContact extends b2Contact
   {
       
      
      public function b2EdgeAndCircleContact()
      {
         super();
      }
      
      public static function §@!7§(param1:*) : b2Contact
      {
         return new b2EdgeAndCircleContact();
      }
      
      public static function §@#V§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §=!H§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§=!H§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::'!9.GetBody();
         var _loc2_:b2Body = b2internal::%#h.GetBody();
         this.§"#Q§(b2internal::%#B,b2internal::'!9.GetShape() as b2EdgeShape,_loc1_.m_xf,b2internal::%#h.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
      
      private function §"#Q§(param1:b2Manifold, param2:b2EdgeShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
      }
   }
}
