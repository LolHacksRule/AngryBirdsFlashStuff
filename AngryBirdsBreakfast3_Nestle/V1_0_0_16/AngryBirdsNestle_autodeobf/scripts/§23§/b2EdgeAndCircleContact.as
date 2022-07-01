package §23§
{
   import §!§.b2Manifold;
   import §'!_§.b2internal;
   import §0"!§.b2Body;
   import §0"!§.b2Fixture;
   import §=!!§.b2CircleShape;
   import §=!!§.b2EdgeShape;
   import §@!E§.b2Transform;
   
   use namespace b2internal;
   
   public class b2EdgeAndCircleContact extends b2Contact
   {
       
      
      public function b2EdgeAndCircleContact()
      {
         super();
      }
      
      public static function §'!D§(param1:*) : b2Contact
      {
         return new b2EdgeAndCircleContact();
      }
      
      public static function §7!d§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §[!2§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§[!2§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::2!k.GetBody();
         var _loc2_:b2Body = b2internal::4!l.GetBody();
         this.§+k§(b2internal::=!u,b2internal::2!k.GetShape() as b2EdgeShape,_loc1_.m_xf,b2internal::4!l.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
      
      private function §+k§(param1:b2Manifold, param2:b2EdgeShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
      }
   }
}
