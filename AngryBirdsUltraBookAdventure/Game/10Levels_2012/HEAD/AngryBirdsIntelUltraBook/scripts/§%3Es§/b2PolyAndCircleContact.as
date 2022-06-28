package §>s§
{
   import §,X§.b2CircleShape;
   import §,X§.b2PolygonShape;
   import §,X§.b2Shape;
   import §1%§.b2Body;
   import §1%§.b2Fixture;
   import §8!H§.b2Settings;
   import §8!H§.b2internal;
   import §`!H§.b2Collision;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function §;!]§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §"!Q§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §`!B§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§`!B§(param1,param2);
         b2Settings.b2Assert(param1.§3r§() == b2Shape.§1!f§);
         b2Settings.b2Assert(param2.§3r§() == b2Shape.§'o§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = §]r§.m_body;
         var _loc2_:b2Body = §"!F§.m_body;
         b2Collision.§;!L§(§]0§,§]r§.GetShape() as b2PolygonShape,_loc1_.m_xf,§"!F§.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
