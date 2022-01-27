package §>6§
{
   import §'!a§.b2internal;
   import §4!W§.b2CircleShape;
   import §9!K§.b2Body;
   import §9!K§.b2Fixture;
   import §;!Z§.b2Collision;
   
   use namespace b2internal;
   
   public class b2CircleContact extends b2Contact
   {
       
      
      public function b2CircleContact()
      {
         super();
      }
      
      public static function §7;§(param1:*) : b2Contact
      {
         return new b2CircleContact();
      }
      
      public static function §7"'§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §2!U§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§2!U§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::1!g.GetBody();
         var _loc2_:b2Body = b2internal::@4.GetBody();
         b2Collision.§%k§(b2internal::-"7,b2internal::1!g.GetShape() as b2CircleShape,_loc1_.m_xf,b2internal::@4.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
