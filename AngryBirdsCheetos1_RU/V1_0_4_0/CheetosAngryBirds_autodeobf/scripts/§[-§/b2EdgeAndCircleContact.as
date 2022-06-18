package §[-§
{
   import §!!#§.b2Manifold;
   import §4! §.b2internal;
   import §9t§.b2Body;
   import §9t§.b2Fixture;
   import §[!E§.b2CircleShape;
   import §[!E§.b2EdgeShape;
   import §^q§.b2Transform;
   
   use namespace b2internal;
   
   public class b2EdgeAndCircleContact extends b2Contact
   {
       
      
      public function b2EdgeAndCircleContact()
      {
         super();
      }
      
      public static function §1P§(param1:*) : b2Contact
      {
         return new b2EdgeAndCircleContact();
      }
      
      public static function §88§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function § Z§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§ Z§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::@! .GetBody();
         var _loc2_:b2Body = b2internal::>d.GetBody();
         this.§>4§(b2internal::@!O,b2internal::@! .GetShape() as b2EdgeShape,_loc1_.m_xf,b2internal::>d.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
      
      private function §>4§(param1:b2Manifold, param2:b2EdgeShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
      }
   }
}
