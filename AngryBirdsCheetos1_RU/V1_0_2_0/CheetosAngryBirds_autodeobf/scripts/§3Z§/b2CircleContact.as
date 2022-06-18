package §3Z§
{
   import § y§.b2CircleShape;
   import §4!&§.b2Body;
   import §4!&§.b2Fixture;
   import §8!%§.b2internal;
   import §<!^§.b2Collision;
   
   use namespace b2internal;
   
   public class b2CircleContact extends b2Contact
   {
       
      
      public function b2CircleContact()
      {
         super();
      }
      
      public static function §?j§(param1:*) : b2Contact
      {
         return new b2CircleContact();
      }
      
      public static function §4c§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §]!S§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§]!S§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::>^.GetBody();
         var _loc2_:b2Body = b2internal::;!Z.GetBody();
         b2Collision.§&!D§(b2internal::2!=,b2internal::>^.GetShape() as b2CircleShape,_loc1_.m_xf,b2internal::;!Z.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
