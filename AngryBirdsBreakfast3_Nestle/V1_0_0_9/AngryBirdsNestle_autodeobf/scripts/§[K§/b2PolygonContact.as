package §[K§
{
   import §'I§.b2internal;
   import §7!&§.b2Collision;
   import §9!Z§.b2Body;
   import §9!Z§.b2Fixture;
   import §`!C§.b2PolygonShape;
   
   use namespace b2internal;
   
   public class b2PolygonContact extends b2Contact
   {
       
      
      public function b2PolygonContact()
      {
         super();
      }
      
      public static function §&y§(param1:*) : b2Contact
      {
         return new b2PolygonContact();
      }
      
      public static function §"!,§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §`p§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§`p§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::,!V.GetBody();
         var _loc2_:b2Body = b2internal::-"0.GetBody();
         b2Collision.§31§(b2internal::1!&,b2internal::,!V.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::-"0.GetShape() as b2PolygonShape,_loc2_.m_xf);
      }
   }
}
