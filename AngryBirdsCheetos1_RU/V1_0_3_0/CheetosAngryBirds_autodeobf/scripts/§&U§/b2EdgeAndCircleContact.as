package §&U§
{
   import §"x§.b2CircleShape;
   import §"x§.b2EdgeShape;
   import §#,§.b2internal;
   import §4]§.b2Body;
   import §4]§.b2Fixture;
   import §7$§.b2Manifold;
   import §[R§.b2Transform;
   
   use namespace b2internal;
   
   public class b2EdgeAndCircleContact extends b2Contact
   {
       
      
      public function b2EdgeAndCircleContact()
      {
         super();
      }
      
      public static function §[?§(param1:*) : b2Contact
      {
         return new b2EdgeAndCircleContact();
      }
      
      public static function §^!K§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §[]§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§[]§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::`3.GetBody();
         var _loc2_:b2Body = b2internal::+!D.GetBody();
         this.§0j§(b2internal::]k,b2internal::`3.GetShape() as b2EdgeShape,_loc1_.m_xf,b2internal::+!D.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
      
      private function §0j§(param1:b2Manifold, param2:b2EdgeShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
      }
   }
}
