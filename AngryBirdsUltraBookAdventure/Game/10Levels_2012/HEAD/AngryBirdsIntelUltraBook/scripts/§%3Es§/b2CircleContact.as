package §>s§
{
   import §,X§.b2CircleShape;
   import §1%§.b2Body;
   import §1%§.b2Fixture;
   import §8!H§.b2internal;
   import §`!H§.b2Collision;
   
   use namespace b2internal;
   
   public class b2CircleContact extends b2Contact
   {
       
      
      public function b2CircleContact()
      {
         super();
      }
      
      public static function §;!]§(param1:*) : b2Contact
      {
         return new b2CircleContact();
      }
      
      public static function §"!Q§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §`!B§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§`!B§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = §]r§.GetBody();
         var _loc2_:b2Body = §"!F§.GetBody();
         b2Collision.§3B§(§]0§,§]r§.GetShape() as b2CircleShape,_loc1_.m_xf,§"!F§.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
