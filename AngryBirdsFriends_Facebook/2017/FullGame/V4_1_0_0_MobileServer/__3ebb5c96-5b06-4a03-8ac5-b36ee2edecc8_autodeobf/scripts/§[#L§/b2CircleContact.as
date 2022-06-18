package §[#L§
{
   import §+#f§.b2CircleShape;
   import §1!+§.b2Body;
   import §1!+§.b2Fixture;
   import §7"^§.b2Collision;
   import §9#K§.b2internal;
   
   use namespace b2internal;
   
   public class b2CircleContact extends b2Contact
   {
       
      
      public function b2CircleContact()
      {
         super();
      }
      
      public static function §@!7§(param1:*) : b2Contact
      {
         return new b2CircleContact();
      }
      
      public static function §@#V§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §=!H§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§=!H§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::'!9.GetBody();
         var _loc2_:b2Body = b2internal::%#h.GetBody();
         b2Collision.§+=§(b2internal::%#B,b2internal::'!9.GetShape() as b2CircleShape,_loc1_.m_xf,b2internal::%#h.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
