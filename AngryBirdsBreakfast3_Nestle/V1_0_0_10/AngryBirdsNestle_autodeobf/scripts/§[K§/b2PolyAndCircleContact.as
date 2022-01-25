package §[K§
{
   import §'I§.b2Settings;
   import §'I§.b2internal;
   import §7!&§.b2Collision;
   import §9!Z§.b2Body;
   import §9!Z§.b2Fixture;
   import §`!C§.b2CircleShape;
   import §`!C§.b2PolygonShape;
   import §`!C§.b2Shape;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function §&y§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §"!,§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §`p§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§`p§(param1,param2);
         b2Settings.b2Assert(param1.§&r§() == b2Shape.§?"#§);
         b2Settings.b2Assert(param2.§&r§() == b2Shape.§7"4§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::,!V.m_body;
         var _loc2_:b2Body = b2internal::-"0.m_body;
         b2Collision.§@!z§(b2internal::1!&,b2internal::,!V.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::-"0.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
