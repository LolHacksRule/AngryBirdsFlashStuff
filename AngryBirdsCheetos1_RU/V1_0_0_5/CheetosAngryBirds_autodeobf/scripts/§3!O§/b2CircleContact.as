package §3!O§
{
   import § !5§.b2internal;
   import §-!$§.b2CircleShape;
   import §?§.b2Collision;
   import §[W§.b2Body;
   import §[W§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2CircleContact extends b2Contact
   {
       
      
      public function b2CircleContact()
      {
         super();
      }
      
      public static function §2Q§(param1:*) : b2Contact
      {
         return new b2CircleContact();
      }
      
      public static function §;t§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §[X§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§[X§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::-".GetBody();
         var _loc2_:b2Body = b2internal::@8.GetBody();
         b2Collision.§#e§(b2internal::'!,,b2internal::-".GetShape() as b2CircleShape,_loc1_.m_xf,b2internal::@8.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
