package §;"R§
{
   import §0H§.b2Settings;
   import §0H§.b2internal;
   import §3"q§.b2Collision;
   import §=#n§.b2Body;
   import §=#n§.b2Fixture;
   import §?!c§.b2CircleShape;
   import §?!c§.b2PolygonShape;
   import §?!c§.b2Shape;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function §'#h§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §@!]§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §<#W§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§<#W§(param1,param2);
         b2Settings.b2Assert(param1.§ "c§() == b2Shape.§0#N§);
         b2Settings.b2Assert(param2.§ "c§() == b2Shape.§+0§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::!!u.m_body;
         var _loc2_:b2Body = b2internal::?!A.m_body;
         b2Collision.§;d§(b2internal::&#V,b2internal::!!u.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::?!A.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
