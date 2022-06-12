package §;!e§
{
   import §"J§.b2Body;
   import §"J§.b2Fixture;
   import §%4§.b2Collision;
   import §2k§.b2CircleShape;
   import §2k§.b2PolygonShape;
   import §2k§.b2Shape;
   import §<";§.b2Settings;
   import §<";§.b2internal;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function §`!P§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §3!0§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §+N§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§+N§(param1,param2);
         b2Settings.b2Assert(param1.§;!F§() == b2Shape.§<!D§);
         b2Settings.b2Assert(param2.§;!F§() == b2Shape.§;n§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::9!<.m_body;
         var _loc2_:b2Body = b2internal::%,.m_body;
         b2Collision.§%d§(b2internal:: !",b2internal::9!<.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::%,.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
