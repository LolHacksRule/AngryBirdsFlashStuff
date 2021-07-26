package §'"6§
{
   import §!"3§.b2CircleShape;
   import §!"3§.b2EdgeShape;
   import §'"-§.b2Manifold;
   import §,"[§.b2internal;
   import §6!^§.b2Transform;
   import §6"1§.b2Body;
   import §6"1§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2EdgeAndCircleContact extends b2Contact
   {
       
      
      public function b2EdgeAndCircleContact()
      {
         super();
      }
      
      public static function §3!N§(param1:*) : b2Contact
      {
         return new b2EdgeAndCircleContact();
      }
      
      public static function §2!s§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §<"U§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§<"U§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::4!?.GetBody();
         var _loc2_:b2Body = b2internal::3!B.GetBody();
         this.§,"8§(b2internal::<!+,b2internal::4!?.GetShape() as b2EdgeShape,_loc1_.m_xf,b2internal::3!B.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
      
      private function §,"8§(param1:b2Manifold, param2:b2EdgeShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
      }
   }
}
