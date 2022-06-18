package §43§
{
   import §#b§.b2PolygonShape;
   import §%!B§.b2Collision;
   import §[x§.b2Body;
   import §[x§.b2Fixture;
   import §^<§.b2internal;
   
   use namespace b2internal;
   
   public class b2PolygonContact extends b2Contact
   {
       
      
      public function b2PolygonContact()
      {
         super();
      }
      
      public static function §[?§(param1:*) : b2Contact
      {
         return new b2PolygonContact();
      }
      
      public static function §58§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §^5§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§^5§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::1!I.GetBody();
         var _loc2_:b2Body = b2internal::1i.GetBody();
         b2Collision.§8!8§(b2internal::2',b2internal::1!I.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::1i.GetShape() as b2PolygonShape,_loc2_.m_xf);
      }
   }
}
