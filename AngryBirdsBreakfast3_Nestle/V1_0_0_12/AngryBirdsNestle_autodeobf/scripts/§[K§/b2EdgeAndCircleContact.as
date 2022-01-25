package §[K§
{
   import §'I§.b2internal;
   import §7!&§.b2Manifold;
   import §9!Z§.b2Body;
   import §9!Z§.b2Fixture;
   import §?"'§.b2Transform;
   import §`!C§.b2CircleShape;
   import §`!C§.b2EdgeShape;
   
   use namespace b2internal;
   
   public class b2EdgeAndCircleContact extends b2Contact
   {
       
      
      public function b2EdgeAndCircleContact()
      {
         super();
      }
      
      public static function §&y§(param1:*) : b2Contact
      {
         return new b2EdgeAndCircleContact();
      }
      
      public static function §"!,§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §`p§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§`p§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::,!V.GetBody();
         var _loc2_:b2Body = b2internal::-"0.GetBody();
         this.§;i§(b2internal::1!&,b2internal::,!V.GetShape() as b2EdgeShape,_loc1_.m_xf,b2internal::-"0.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
      
      private function §;i§(param1:b2Manifold, param2:b2EdgeShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
      }
   }
}
