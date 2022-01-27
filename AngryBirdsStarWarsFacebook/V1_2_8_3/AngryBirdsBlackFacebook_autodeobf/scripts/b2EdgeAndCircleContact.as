package
{
   import §1!2§.b2CircleShape;
   import §1!2§.b2EdgeShape;
   import §7!I§.b2internal;
   import §7"A§.b2Transform;
   import §>"_§.b2Body;
   import §>"_§.b2Fixture;
   import §>r§.b2Manifold;
   
   use namespace b2internal;
   
   public class b2EdgeAndCircleContact extends b2Contact
   {
       
      
      public function b2EdgeAndCircleContact()
      {
         super();
      }
      
      public static function § "a§(param1:*) : b2Contact
      {
         return new b2EdgeAndCircleContact();
      }
      
      public static function § !g§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §`"v§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§`"v§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::,"2.GetBody();
         var _loc2_:b2Body = b2internal::1M.GetBody();
         this.§>#4§(b2internal::-#3,b2internal::,"2.GetShape() as b2EdgeShape,_loc1_.m_xf,b2internal::1M.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
      
      private function §>#4§(param1:b2Manifold, param2:b2EdgeShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
      }
   }
}
