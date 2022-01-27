package §;!U§
{
   import §!O§.b2CircleShape;
   import §!O§.b2PolygonShape;
   import §!O§.b2Shape;
   import §0!?§.b2Body;
   import §0!?§.b2Fixture;
   import §0^§.b2Settings;
   import §0^§.b2internal;
   import §`!E§.b2Collision;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function §6>§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §>s§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §@%§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§@%§(param1,param2);
         b2Settings.b2Assert(param1.§7"§() == b2Shape.§ !T§);
         b2Settings.b2Assert(param2.§7"§() == b2Shape.§8!%§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::&'.m_body;
         var _loc2_:b2Body = b2internal::[!d.m_body;
         b2Collision.§&!S§(b2internal::8g,b2internal::&'.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::[!d.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
