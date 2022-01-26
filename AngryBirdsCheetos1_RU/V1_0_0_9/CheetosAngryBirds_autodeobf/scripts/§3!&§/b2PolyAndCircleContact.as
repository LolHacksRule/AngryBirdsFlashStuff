package §3!&§
{
   import §!!B§.b2Body;
   import §!!B§.b2Fixture;
   import §5p§.b2CircleShape;
   import §5p§.b2PolygonShape;
   import §5p§.b2Shape;
   import §7S§.b2Collision;
   import §;0§.b2Settings;
   import §;0§.b2internal;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function §=S§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §true§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §9-§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§9-§(param1,param2);
         b2Settings.b2Assert(param1.§9o§() == b2Shape.§%1§);
         b2Settings.b2Assert(param2.§9o§() == b2Shape.§!E§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::=N.m_body;
         var _loc2_:b2Body = b2internal::?P.m_body;
         b2Collision.§]_§(b2internal::+P,b2internal::=N.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::?P.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
