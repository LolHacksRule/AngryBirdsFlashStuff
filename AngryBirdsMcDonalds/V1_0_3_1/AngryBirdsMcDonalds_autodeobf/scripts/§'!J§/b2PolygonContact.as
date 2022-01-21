package §'!J§
{
   import §&x§.b2Body;
   import §&x§.b2Fixture;
   import §-!T§.b2Collision;
   import §3o§.b2internal;
   import §8!b§.b2PolygonShape;
   
   use namespace b2internal;
   
   public class b2PolygonContact extends b2Contact
   {
       
      
      public function b2PolygonContact()
      {
         super();
      }
      
      public static function §;!1§(param1:*) : b2Contact
      {
         return new b2PolygonContact();
      }
      
      public static function § ;§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §?r§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§?r§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal:: `.GetBody();
         var _loc2_:b2Body = b2internal::"!9.GetBody();
         b2Collision.§6!I§(b2internal::1z,b2internal:: `.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::"!9.GetShape() as b2PolygonShape,_loc2_.m_xf);
      }
   }
}
