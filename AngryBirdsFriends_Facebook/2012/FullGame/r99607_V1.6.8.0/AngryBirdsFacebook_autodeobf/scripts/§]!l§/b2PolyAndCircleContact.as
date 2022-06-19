package §]!l§
{
   import § !k§.b2Body;
   import § !k§.b2Fixture;
   import §&I§.b2CircleShape;
   import §&I§.b2PolygonShape;
   import §&I§.b2Shape;
   import §6!d§.b2Collision;
   import §in§.b2Settings;
   import §in§.b2internal;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function §#!b§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §1?§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §`!r§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§`!r§(param1,param2);
         b2Settings.b2Assert(param1.§9!j§() == b2Shape.§?! §);
         b2Settings.b2Assert(param2.§9!j§() == b2Shape.§-"=§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::'!u.m_body;
         var _loc2_:b2Body = b2internal:: !X.m_body;
         b2Collision.§!!;§(b2internal::"t,b2internal::'!u.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal:: !X.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
