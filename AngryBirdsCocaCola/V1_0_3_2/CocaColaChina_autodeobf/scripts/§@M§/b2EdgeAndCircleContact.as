package §@M§
{
   import §"!R§.b2internal;
   import §'&§.b2CircleShape;
   import §'&§.b2EdgeShape;
   import §;!7§.b2Manifold;
   import §=!U§.b2Body;
   import §=!U§.b2Fixture;
   import §implements§.b2Transform;
   
   use namespace b2internal;
   
   public class b2EdgeAndCircleContact extends b2Contact
   {
       
      
      public function b2EdgeAndCircleContact()
      {
         super();
      }
      
      public static function §0!^§(param1:*) : b2Contact
      {
         return new b2EdgeAndCircleContact();
      }
      
      public static function §9!K§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §8^§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§8^§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::'M.GetBody();
         var _loc2_:b2Body = b2internal::=!A.GetBody();
         this.§@!6§(b2internal::=,,b2internal::'M.GetShape() as b2EdgeShape,_loc1_.m_xf,b2internal::=!A.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
      
      private function §@!6§(param1:b2Manifold, param2:b2EdgeShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
      }
   }
}
