package §?!D§
{
   import §&!M§.b2Body;
   import §&!M§.b2Fixture;
   import §,Y§.b2CircleShape;
   import §,Y§.b2EdgeShape;
   import §3!t§.b2Transform;
   import §6!`§.b2internal;
   import §;"0§.b2Manifold;
   
   use namespace b2internal;
   
   public class b2EdgeAndCircleContact extends b2Contact
   {
       
      
      public function b2EdgeAndCircleContact()
      {
         super();
      }
      
      public static function §[,§(param1:*) : b2Contact
      {
         return new b2EdgeAndCircleContact();
      }
      
      public static function §3"8§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §%@§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§%@§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::true .GetBody();
         var _loc2_:b2Body = b2internal::]!f.GetBody();
         this.§'!6§(b2internal::-!w,b2internal::true .GetShape() as b2EdgeShape,_loc1_.m_xf,b2internal::]!f.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
      
      private function §'!6§(param1:b2Manifold, param2:b2EdgeShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
      }
   }
}
