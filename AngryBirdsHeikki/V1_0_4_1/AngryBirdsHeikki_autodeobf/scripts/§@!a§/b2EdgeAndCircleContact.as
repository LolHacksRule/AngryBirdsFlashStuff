package §@!a§
{
   import §+!b§.b2CircleShape;
   import §+!b§.b2EdgeShape;
   import §4x§.b2internal;
   import §8!I§.b2Body;
   import §8!I§.b2Fixture;
   import §<"§.b2Manifold;
   import §=i§.b2Transform;
   
   use namespace b2internal;
   
   public class b2EdgeAndCircleContact extends b2Contact
   {
       
      
      public function b2EdgeAndCircleContact()
      {
         super();
      }
      
      public static function § `§(param1:*) : b2Contact
      {
         return new b2EdgeAndCircleContact();
      }
      
      public static function §%!`§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §5!9§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§5!9§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::]![.GetBody();
         var _loc2_:b2Body = b2internal::11.GetBody();
         this.§5!!§(b2internal::=!=,b2internal::]![.GetShape() as b2EdgeShape,_loc1_.m_xf,b2internal::11.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
      
      private function §5!!§(param1:b2Manifold, param2:b2EdgeShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
      }
   }
}
