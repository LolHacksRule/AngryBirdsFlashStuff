package §'!^§
{
   import §"!w§.b2CircleShape;
   import §"!w§.b2PolygonShape;
   import §"!w§.b2Shape;
   import §8K§.b2Settings;
   import §8K§.b2internal;
   import §;`§.b2Body;
   import §;`§.b2Fixture;
   import §>!m§.b2Collision;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function §&!L§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §<!p§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §;c§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§;c§(param1,param2);
         b2Settings.b2Assert(param1.§^![§() == b2Shape.§7!D§);
         b2Settings.b2Assert(param2.§^![§() == b2Shape.§?!<§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::@!y.m_body;
         var _loc2_:b2Body = b2internal::0!O.m_body;
         b2Collision.§+"1§(b2internal::@I,b2internal::@!y.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::0!O.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
