package §8[§
{
   import §+#$§.b2Body;
   import §+#$§.b2Fixture;
   import §3"5§.b2Collision;
   import §4!$§.b2CircleShape;
   import §4!$§.b2PolygonShape;
   import §4!$§.b2Shape;
   import §5"i§.b2Settings;
   import §5"i§.b2internal;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function §=!S§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §;!"§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §'B§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§'B§(param1,param2);
         b2Settings.b2Assert(param1.§8! §() == b2Shape.§ !7§);
         b2Settings.b2Assert(param2.§8! §() == b2Shape.§;!T§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::8"Q.m_body;
         var _loc2_:b2Body = b2internal::?# .m_body;
         b2Collision.§7"S§(b2internal::!#Y,b2internal::8"Q.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::?# .GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
