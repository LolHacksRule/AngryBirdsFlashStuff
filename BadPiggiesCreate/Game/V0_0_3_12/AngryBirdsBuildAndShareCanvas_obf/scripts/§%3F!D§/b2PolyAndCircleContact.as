package §?!D§
{
   import §&!M§.b2Body;
   import §&!M§.b2Fixture;
   import §,Y§.b2CircleShape;
   import §,Y§.b2PolygonShape;
   import §,Y§.b2Shape;
   import §6!`§.b2Settings;
   import §6!`§.b2internal;
   import §;"0§.b2Collision;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function §[,§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §3"8§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §%@§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§%@§(param1,param2);
         b2Settings.b2Assert(param1.§6!Q§() == b2Shape.§-n§);
         b2Settings.b2Assert(param2.§6!Q§() == b2Shape.§93§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::true .m_body;
         var _loc2_:b2Body = b2internal::]!f.m_body;
         b2Collision.§[P§(b2internal::-!w,b2internal::true .GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::]!f.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
