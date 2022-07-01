package §2"%§
{
   import §-j§.b2Collision;
   import §7!F§.b2Settings;
   import §7!F§.b2internal;
   import §=!c§.b2Body;
   import §=!c§.b2Fixture;
   import §[e§.b2CircleShape;
   import §[e§.b2PolygonShape;
   import §[e§.b2Shape;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function §<!n§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §6!j§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §&-§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§&-§(param1,param2);
         b2Settings.b2Assert(param1.§&!u§() == b2Shape.§+"0§);
         b2Settings.b2Assert(param2.§&!u§() == b2Shape.§?!%§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::`!P.m_body;
         var _loc2_:b2Body = b2internal::%!.m_body;
         b2Collision.§7x§(b2internal::8n,b2internal::`!P.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::%!.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
