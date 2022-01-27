package §=!n§
{
   import §'!&§.b2Body;
   import §'!&§.b2Fixture;
   import §,Z§.b2CircleShape;
   import §3c§.b2Collision;
   import §@!'§.b2internal;
   
   use namespace b2internal;
   
   public class b2CircleContact extends b2Contact
   {
       
      
      public function b2CircleContact()
      {
         super();
      }
      
      public static function §]H§(param1:*) : b2Contact
      {
         return new b2CircleContact();
      }
      
      public static function §^!a§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §`"<§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§`"<§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::;"B.GetBody();
         var _loc2_:b2Body = b2internal::8q.GetBody();
         b2Collision.§ !3§(b2internal::8!?,b2internal::;"B.GetShape() as b2CircleShape,_loc1_.m_xf,b2internal::8q.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
