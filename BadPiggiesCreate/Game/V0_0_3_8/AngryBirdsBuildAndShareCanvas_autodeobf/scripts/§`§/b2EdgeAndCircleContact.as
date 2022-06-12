package §`§
{
   import §&!n§.b2Manifold;
   import §2!Q§.b2CircleShape;
   import §2!Q§.b2EdgeShape;
   import §8,§.b2internal;
   import §9v§.b2Transform;
   import §?!E§.b2Body;
   import §?!E§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2EdgeAndCircleContact extends b2Contact
   {
       
      
      public function b2EdgeAndCircleContact()
      {
         super();
      }
      
      public static function §-"$§(param1:*) : b2Contact
      {
         return new b2EdgeAndCircleContact();
      }
      
      public static function §@!,§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §8!<§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§8!<§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::+!u.GetBody();
         var _loc2_:b2Body = b2internal::6h.GetBody();
         this.§"p§(b2internal::7`,b2internal::+!u.GetShape() as b2EdgeShape,_loc1_.m_xf,b2internal::6h.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
      
      private function §"p§(param1:b2Manifold, param2:b2EdgeShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
      }
   }
}
