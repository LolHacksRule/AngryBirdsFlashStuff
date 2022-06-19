package §30§
{
   import § o§.b2Body;
   import § o§.b2Fixture;
   import §"0§.b2Settings;
   import §"0§.b2internal;
   import §-r§.b2Collision;
   import §]!S§.b2CircleShape;
   import §]!S§.b2PolygonShape;
   import §]!S§.b2Shape;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function §#!M§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §[!$§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §2'§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§2'§(param1,param2);
         b2Settings.b2Assert(param1.§7!_§() == b2Shape.§"![§);
         b2Settings.b2Assert(param2.§7!_§() == b2Shape.§,-§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::45.m_body;
         var _loc2_:b2Body = b2internal::?G.m_body;
         b2Collision.§'d§(b2internal::-0,b2internal::45.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::?G.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
