package §1z§
{
   import § Y§.b2CircleShape;
   import § Y§.b2PolygonShape;
   import § Y§.b2Shape;
   import §<!L§.b2Body;
   import §<!L§.b2Fixture;
   import §?F§.b2Collision;
   import §[!$§.b2Settings;
   import §[!$§.b2internal;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function §8y§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §#2§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §>[§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§>[§(param1,param2);
         b2Settings.b2Assert(param1.§1k§() == b2Shape.§"!c§);
         b2Settings.b2Assert(param2.§1k§() == b2Shape.§[w§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::[![.m_body;
         var _loc2_:b2Body = b2internal::1J.m_body;
         b2Collision.§^!U§(b2internal::%Q,b2internal::[![.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::1J.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
