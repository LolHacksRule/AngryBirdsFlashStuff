package §30§
{
   import § o§.b2Body;
   import § o§.b2Fixture;
   import §"0§.b2internal;
   import §-r§.b2Collision;
   import §]!S§.b2CircleShape;
   
   use namespace b2internal;
   
   public class b2CircleContact extends b2Contact
   {
       
      
      public function b2CircleContact()
      {
         super();
      }
      
      public static function §#!M§(param1:*) : b2Contact
      {
         return new b2CircleContact();
      }
      
      public static function §[!$§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §2'§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§2'§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::45.GetBody();
         var _loc2_:b2Body = b2internal::?G.GetBody();
         b2Collision.§5!V§(b2internal::-0,b2internal::45.GetShape() as b2CircleShape,_loc1_.m_xf,b2internal::?G.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
