package §8!D§
{
   import §7"'§.b2Settings;
   import §7"'§.b2internal;
   import §<!j§.b2CircleShape;
   import §<!j§.b2PolygonShape;
   import §<!j§.b2Shape;
   import §=9§.b2Body;
   import §=9§.b2Fixture;
   import §[!Z§.b2Collision;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function §83§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §&!`§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §8d§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§8d§(param1,param2);
         b2Settings.b2Assert(param1.get() == b2Shape.§[X§);
         b2Settings.b2Assert(param2.get() == b2Shape.§;e§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::'!$.m_body;
         var _loc2_:b2Body = b2internal::>!#.m_body;
         b2Collision.§49§(b2internal::7!W,b2internal::'!$.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::>!#.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
