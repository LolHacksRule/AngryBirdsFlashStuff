package §!!o§
{
   import §,P§.b2Collision;
   import §9"5§.b2Body;
   import §9"5§.b2Fixture;
   import §>!R§.b2internal;
   import §>"&§.b2CircleShape;
   
   use namespace b2internal;
   
   public class b2CircleContact extends b2Contact
   {
       
      
      public function b2CircleContact()
      {
         super();
      }
      
      public static function §0!8§(param1:*) : b2Contact
      {
         return new b2CircleContact();
      }
      
      public static function §&`§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §=a§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§=a§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::4<.GetBody();
         var _loc2_:b2Body = b2internal::6%.GetBody();
         b2Collision.§=!$§(b2internal::@"$,b2internal::4<.GetShape() as b2CircleShape,_loc1_.m_xf,b2internal::6%.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
