package §8[§
{
   import §+#$§.b2Body;
   import §+#$§.b2Fixture;
   import §3"5§.b2Collision;
   import §4!$§.b2CircleShape;
   import §5"i§.b2internal;
   
   use namespace b2internal;
   
   public class b2CircleContact extends b2Contact
   {
       
      
      public function b2CircleContact()
      {
         super();
      }
      
      public static function §=!S§(param1:*) : b2Contact
      {
         return new b2CircleContact();
      }
      
      public static function §;!"§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §'B§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§'B§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::8"Q.GetBody();
         var _loc2_:b2Body = b2internal::?# .GetBody();
         b2Collision.§-"c§(b2internal::!#Y,b2internal::8"Q.GetShape() as b2CircleShape,_loc1_.m_xf,b2internal::?# .GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
