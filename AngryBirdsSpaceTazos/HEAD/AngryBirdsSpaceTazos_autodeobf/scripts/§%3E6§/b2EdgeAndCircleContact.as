package §>6§
{
   import §'!a§.b2internal;
   import §4!W§.b2CircleShape;
   import §4!W§.b2EdgeShape;
   import §6!n§.b2Transform;
   import §9!K§.b2Body;
   import §9!K§.b2Fixture;
   import §;!Z§.b2Manifold;
   
   use namespace b2internal;
   
   public class b2EdgeAndCircleContact extends b2Contact
   {
       
      
      public function b2EdgeAndCircleContact()
      {
         super();
      }
      
      public static function §7;§(param1:*) : b2Contact
      {
         return new b2EdgeAndCircleContact();
      }
      
      public static function §7"'§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §2!U§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§2!U§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::1!g.GetBody();
         var _loc2_:b2Body = b2internal::@4.GetBody();
         this.§-",§(b2internal::-"7,b2internal::1!g.GetShape() as b2EdgeShape,_loc1_.m_xf,b2internal::@4.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
      
      private function §-",§(param1:b2Manifold, param2:b2EdgeShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
      }
   }
}
