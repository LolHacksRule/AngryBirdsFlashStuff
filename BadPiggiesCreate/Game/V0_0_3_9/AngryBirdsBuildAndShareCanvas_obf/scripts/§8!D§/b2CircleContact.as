package §8!D§
{
   import §7"'§.b2internal;
   import §<!j§.b2CircleShape;
   import §=9§.b2Body;
   import §=9§.b2Fixture;
   import §[!Z§.b2Collision;
   
   use namespace b2internal;
   
   public class b2CircleContact extends b2Contact
   {
       
      
      public function b2CircleContact()
      {
         super();
      }
      
      public static function §83§(param1:*) : b2Contact
      {
         return new b2CircleContact();
      }
      
      public static function §&!`§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §8d§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§8d§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::'!$.GetBody();
         var _loc2_:b2Body = b2internal::>!#.GetBody();
         b2Collision.§]!K§(b2internal::7!W,b2internal::'!$.GetShape() as b2CircleShape,_loc1_.m_xf,b2internal::>!#.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
