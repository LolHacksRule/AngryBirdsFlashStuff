package §4!2§
{
   import § !0§.b2Collision;
   import §&!Y§.b2Body;
   import §&!Y§.b2Fixture;
   import §+!d§.b2CircleShape;
   import §+!d§.b2PolygonShape;
   import §+!d§.b2Shape;
   import §@!a§.b2Settings;
   import §@!a§.b2internal;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function §]!e§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §]!f§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §["=§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§["=§(param1,param2);
         b2Settings.b2Assert(param1.§;!w§() == b2Shape.§-c§);
         b2Settings.b2Assert(param2.§;!w§() == b2Shape.§9!y§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::9!E.m_body;
         var _loc2_:b2Body = b2internal::5m.m_body;
         b2Collision.§"!G§(b2internal::'R,b2internal::9!E.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::5m.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
