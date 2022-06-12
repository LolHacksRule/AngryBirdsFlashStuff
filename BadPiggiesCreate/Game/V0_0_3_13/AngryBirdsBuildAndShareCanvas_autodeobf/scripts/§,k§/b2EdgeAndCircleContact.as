package §,k§
{
   import §-g§.b2Manifold;
   import §1!z§.b2Transform;
   import §5!]§.b2CircleShape;
   import §5!]§.b2EdgeShape;
   import §7!q§.b2Body;
   import §7!q§.b2Fixture;
   import §[M§.b2internal;
   
   use namespace b2internal;
   
   public class b2EdgeAndCircleContact extends b2Contact
   {
       
      
      public function b2EdgeAndCircleContact()
      {
         super();
      }
      
      public static function §="1§(param1:*) : b2Contact
      {
         return new b2EdgeAndCircleContact();
      }
      
      public static function §,"0§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §;!V§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§;!V§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::?a.GetBody();
         var _loc2_:b2Body = b2internal::;!S.GetBody();
         this.§#W§(b2internal::28,b2internal::?a.GetShape() as b2EdgeShape,_loc1_.m_xf,b2internal::;!S.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
      
      private function §#W§(param1:b2Manifold, param2:b2EdgeShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
      }
   }
}
