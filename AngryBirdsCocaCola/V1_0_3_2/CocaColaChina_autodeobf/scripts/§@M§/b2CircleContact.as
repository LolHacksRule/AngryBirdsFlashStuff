package §@M§
{
   import §"!R§.b2internal;
   import §'&§.b2CircleShape;
   import §;!7§.b2Collision;
   import §=!U§.b2Body;
   import §=!U§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2CircleContact extends b2Contact
   {
       
      
      public function b2CircleContact()
      {
         super();
      }
      
      public static function §0!^§(param1:*) : b2Contact
      {
         return new b2CircleContact();
      }
      
      public static function §9!K§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §8^§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§8^§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::'M.GetBody();
         var _loc2_:b2Body = b2internal::=!A.GetBody();
         b2Collision.§4!&§(b2internal::=,,b2internal::'M.GetShape() as b2CircleShape,_loc1_.m_xf,b2internal::=!A.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
