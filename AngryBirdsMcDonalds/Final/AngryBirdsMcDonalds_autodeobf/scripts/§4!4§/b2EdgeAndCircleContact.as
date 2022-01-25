package §4!4§
{
   import §&!P§.b2Manifold;
   import §+!o§.b2CircleShape;
   import §+!o§.b2EdgeShape;
   import §-0§.b2Body;
   import §-0§.b2Fixture;
   import §@g§.b2internal;
   import §^!%§.b2Transform;
   
   use namespace b2internal;
   
   public class b2EdgeAndCircleContact extends b2Contact
   {
       
      
      public function b2EdgeAndCircleContact()
      {
         super();
      }
      
      public static function §6j§(param1:*) : b2Contact
      {
         return new b2EdgeAndCircleContact();
      }
      
      public static function § B§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §<L§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§<L§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::0!b.GetBody();
         var _loc2_:b2Body = b2internal::&a.GetBody();
         this.§5!L§(b2internal::5R,b2internal::0!b.GetShape() as b2EdgeShape,_loc1_.m_xf,b2internal::&a.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
      
      private function §5!L§(param1:b2Manifold, param2:b2EdgeShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
      }
   }
}
