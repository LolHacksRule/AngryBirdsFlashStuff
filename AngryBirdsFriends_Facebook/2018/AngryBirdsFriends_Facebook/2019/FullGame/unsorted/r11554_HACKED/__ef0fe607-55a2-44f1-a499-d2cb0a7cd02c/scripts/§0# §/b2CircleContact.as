package §0# §
{
   import §0J§.b2Collision;
   import §8#t§.b2Body;
   import §8#t§.b2Fixture;
   import §[!3§.b2internal;
   import §]!o§.b2CircleShape;
   
   use namespace b2internal;
   
   public class b2CircleContact extends b2Contact
   {
       
      
      public function b2CircleContact()
      {
         super();
      }
      
      public static function §9b§(param1:*) : b2Contact
      {
         return new b2CircleContact();
      }
      
      public static function §-!2§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §9#t§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§9#t§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::7";.GetBody();
         var _loc2_:b2Body = b2internal::4"J.GetBody();
         b2Collision.§7"q§(b2internal::0!T,b2internal::7";.GetShape() as b2CircleShape,_loc1_.m_xf,b2internal::4"J.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
