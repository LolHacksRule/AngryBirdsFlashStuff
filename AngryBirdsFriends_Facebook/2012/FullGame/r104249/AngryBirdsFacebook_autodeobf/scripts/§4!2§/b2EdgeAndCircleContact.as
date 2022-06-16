package §4!2§
{
   import § !0§.b2Manifold;
   import §&!Y§.b2Body;
   import §&!Y§.b2Fixture;
   import §+!d§.b2CircleShape;
   import §+!d§.b2EdgeShape;
   import §7F§.b2Transform;
   import §@!a§.b2internal;
   
   use namespace b2internal;
   
   public class b2EdgeAndCircleContact extends b2Contact
   {
       
      
      public function b2EdgeAndCircleContact()
      {
         super();
      }
      
      public static function §]!e§(param1:*) : b2Contact
      {
         return new b2EdgeAndCircleContact();
      }
      
      public static function §]!f§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §["=§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§["=§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::9!E.GetBody();
         var _loc2_:b2Body = b2internal::5m.GetBody();
         this.§`"F§(b2internal::'R,b2internal::9!E.GetShape() as b2EdgeShape,_loc1_.m_xf,b2internal::5m.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
      
      private function §`"F§(param1:b2Manifold, param2:b2EdgeShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
      }
   }
}
