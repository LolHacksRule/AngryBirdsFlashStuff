package §3!&§
{
   import §!!B§.b2Body;
   import §!!B§.b2Fixture;
   import §5p§.b2CircleShape;
   import §7S§.b2Collision;
   import §;0§.b2internal;
   
   use namespace b2internal;
   
   public class b2CircleContact extends b2Contact
   {
       
      
      public function b2CircleContact()
      {
         super();
      }
      
      public static function §=S§(param1:*) : b2Contact
      {
         return new b2CircleContact();
      }
      
      public static function §true§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §9-§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§9-§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::=N.GetBody();
         var _loc2_:b2Body = b2internal::?P.GetBody();
         b2Collision.§;Q§(b2internal::+P,b2internal::=N.GetShape() as b2CircleShape,_loc1_.m_xf,b2internal::?P.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
