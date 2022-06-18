package §[-§
{
   import §!!#§.b2Collision;
   import §4! §.b2Settings;
   import §4! §.b2internal;
   import §9t§.b2Body;
   import §9t§.b2Fixture;
   import §[!E§.b2CircleShape;
   import §[!E§.b2PolygonShape;
   import §[!E§.b2Shape;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function §1P§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §88§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function § Z§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§ Z§(param1,param2);
         b2Settings.b2Assert(param1.§9P§() == b2Shape.§+4§);
         b2Settings.b2Assert(param2.§9P§() == b2Shape.§5E§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::@! .m_body;
         var _loc2_:b2Body = b2internal::>d.m_body;
         b2Collision.§!L§(b2internal::@!O,b2internal::@! .GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::>d.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
