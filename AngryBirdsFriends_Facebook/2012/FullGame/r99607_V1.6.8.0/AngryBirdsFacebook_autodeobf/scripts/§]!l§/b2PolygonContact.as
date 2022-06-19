package §]!l§
{
   import § !k§.b2Body;
   import § !k§.b2Fixture;
   import §&I§.b2PolygonShape;
   import §6!d§.b2Collision;
   import §in§.b2internal;
   
   use namespace b2internal;
   
   public class b2PolygonContact extends b2Contact
   {
       
      
      public function b2PolygonContact()
      {
         super();
      }
      
      public static function §#!b§(param1:*) : b2Contact
      {
         return new b2PolygonContact();
      }
      
      public static function §1?§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §`!r§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§`!r§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::'!u.GetBody();
         var _loc2_:b2Body = b2internal:: !X.GetBody();
         b2Collision.§!!+§(b2internal::"t,b2internal::'!u.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal:: !X.GetShape() as b2PolygonShape,_loc2_.m_xf);
      }
   }
}
