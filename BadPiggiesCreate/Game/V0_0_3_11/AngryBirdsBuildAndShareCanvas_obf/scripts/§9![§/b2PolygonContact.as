package §9![§
{
   import § 6§.b2Collision;
   import §1!3§.b2PolygonShape;
   import §7z§.b2Body;
   import §7z§.b2Fixture;
   import §^+§.b2internal;
   
   use namespace b2internal;
   
   public class b2PolygonContact extends b2Contact
   {
       
      
      public function b2PolygonContact()
      {
         super();
      }
      
      public static function §7T§(param1:*) : b2Contact
      {
         return new b2PolygonContact();
      }
      
      public static function §#"&§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §^m§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§^m§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::2G.GetBody();
         var _loc2_:b2Body = b2internal::]![.GetBody();
         b2Collision.§'!5§(b2internal::7"-,b2internal::2G.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::]![.GetShape() as b2PolygonShape,_loc2_.m_xf);
      }
   }
}
