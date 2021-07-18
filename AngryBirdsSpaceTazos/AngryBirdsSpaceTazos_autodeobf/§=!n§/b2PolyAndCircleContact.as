package §=!n§
{
   import §'!&§.b2Body;
   import §'!&§.b2Fixture;
   import §,Z§.b2CircleShape;
   import §,Z§.b2PolygonShape;
   import §,Z§.b2Shape;
   import §3c§.b2Collision;
   import §@!'§.b2Settings;
   import §@!'§.b2internal;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function §]H§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §^!a§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §`"<§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§`"<§(param1,param2);
         b2Settings.b2Assert(param1.§@!N§() == b2Shape.§4"+§);
         b2Settings.b2Assert(param2.§@!N§() == b2Shape.§-M§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::;"B.m_body;
         var _loc2_:b2Body = b2internal::8q.m_body;
         b2Collision.§1!6§(b2internal::8!?,b2internal::;"B.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::8q.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
