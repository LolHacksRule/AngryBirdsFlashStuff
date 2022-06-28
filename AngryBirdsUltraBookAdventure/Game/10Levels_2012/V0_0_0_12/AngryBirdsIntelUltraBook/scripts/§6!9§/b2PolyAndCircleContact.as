package §6!9§
{
   import §#!"§.b2CircleShape;
   import §#!"§.b2PolygonShape;
   import §#!"§.b2Shape;
   import §'s§.b2Collision;
   import §+!,§.b2Settings;
   import §+!,§.b2internal;
   import §]=§.b2Body;
   import §]=§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function §]!U§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §"P§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §@!D§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§@!D§(param1,param2);
         b2Settings.b2Assert(param1.§-V§() == b2Shape.§2r§);
         b2Settings.b2Assert(param2.§-V§() == b2Shape.§!!W§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = §41§.m_body;
         var _loc2_:b2Body = §[0§.m_body;
         b2Collision.§4A§(§^O§,§41§.GetShape() as b2PolygonShape,_loc1_.m_xf,§[0§.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
