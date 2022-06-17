package §6"0§
{
   import §,!T§.b2CircleShape;
   import §1#F§.b2internal;
   import §3#h§.b2Body;
   import §3#h§.b2Fixture;
   import §9$A§.b2Collision;
   
   use namespace b2internal;
   
   public class b2CircleContact extends b2Contact
   {
       
      
      public function b2CircleContact()
      {
         super();
      }
      
      public static function §'#q§(param1:*) : b2Contact
      {
         return new b2CircleContact();
      }
      
      public static function §0"y§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §14§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§14§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::#";.GetBody();
         var _loc2_:b2Body = b2internal::0#0.GetBody();
         b2Collision.§@#8§(b2internal::[!2,b2internal::#";.GetShape() as b2CircleShape,_loc1_.m_xf,b2internal::0#0.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
