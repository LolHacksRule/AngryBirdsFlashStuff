package §@^§
{
   import §%]§.b2Collision;
   import §3'§.b2Settings;
   import §3'§.b2internal;
   import §=u§.b2CircleShape;
   import §=u§.b2PolygonShape;
   import §=u§.b2Shape;
   import §?!F§.b2Body;
   import §?!F§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function §<!E§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §[!,§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §super§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§super§(param1,param2);
         b2Settings.b2Assert(param1.§[!H§() == b2Shape.§1!J§);
         b2Settings.b2Assert(param2.§[!H§() == b2Shape.§2!J§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::9!0.m_body;
         var _loc2_:b2Body = b2internal::#;.m_body;
         b2Collision.each(b2internal::#!",b2internal::9!0.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::#;.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
