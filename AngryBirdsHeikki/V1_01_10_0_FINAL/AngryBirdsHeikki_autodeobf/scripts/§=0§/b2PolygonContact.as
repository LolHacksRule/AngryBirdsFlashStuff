package §=0§
{
   import §!4§.b2Collision;
   import §3!R§.b2Body;
   import §3!R§.b2Fixture;
   import §7q§.b2PolygonShape;
   import §^P§.b2internal;
   
   use namespace b2internal;
   
   public class b2PolygonContact extends b2Contact
   {
       
      
      public function b2PolygonContact()
      {
         super();
      }
      
      public static function §;O§(param1:*) : b2Contact
      {
         return new b2PolygonContact();
      }
      
      public static function §;!^§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §;!C§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§;!C§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::&4.GetBody();
         var _loc2_:b2Body = b2internal::;,.GetBody();
         b2Collision.§!!U§(b2internal::1`,b2internal::&4.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::;,.GetShape() as b2PolygonShape,_loc2_.m_xf);
      }
   }
}
