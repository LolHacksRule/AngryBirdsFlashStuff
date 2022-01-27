package §;!U§
{
   import §!O§.b2CircleShape;
   import §!O§.b2EdgeShape;
   import §0!=§.b2Transform;
   import §0!?§.b2Body;
   import §0!?§.b2Fixture;
   import §0^§.b2internal;
   import §`!E§.b2Manifold;
   
   use namespace b2internal;
   
   public class b2EdgeAndCircleContact extends b2Contact
   {
       
      
      public function b2EdgeAndCircleContact()
      {
         super();
      }
      
      public static function §6>§(param1:*) : b2Contact
      {
         return new b2EdgeAndCircleContact();
      }
      
      public static function §>s§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §@%§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§@%§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::&'.GetBody();
         var _loc2_:b2Body = b2internal::[!d.GetBody();
         this.§2!F§(b2internal::8g,b2internal::&'.GetShape() as b2EdgeShape,_loc1_.m_xf,b2internal::[!d.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
      
      private function §2!F§(param1:b2Manifold, param2:b2EdgeShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
      }
   }
}
