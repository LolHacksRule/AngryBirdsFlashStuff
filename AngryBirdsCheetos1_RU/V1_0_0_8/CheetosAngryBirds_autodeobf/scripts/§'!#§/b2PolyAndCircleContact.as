package §'!#§
{
   import §'!3§.b2Settings;
   import §'!3§.b2internal;
   import §9!$§.b2Collision;
   import §?0§.b2Body;
   import §?0§.b2Fixture;
   import §@,§.b2CircleShape;
   import §@,§.b2PolygonShape;
   import §@,§.b2Shape;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function § V§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §"z§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §5!X§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§5!X§(param1,param2);
         b2Settings.b2Assert(param1.§1!A§() == b2Shape.§2!1§);
         b2Settings.b2Assert(param2.§1!A§() == b2Shape.§2i§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::8!7.m_body;
         var _loc2_:b2Body = b2internal::86.m_body;
         b2Collision.§@!$§(b2internal::0!M,b2internal::8!7.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::86.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
