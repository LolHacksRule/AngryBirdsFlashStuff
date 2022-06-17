package §-#F§
{
   import §&$+§.b2internal;
   import §'#K§.b2Body;
   import §'#K§.b2Fixture;
   import §,#E§.b2Collision;
   import §1#I§.b2CircleShape;
   
   use namespace b2internal;
   
   public class b2CircleContact extends b2Contact
   {
       
      
      public function b2CircleContact()
      {
         super();
      }
      
      public static function §9#s§(param1:*) : b2Contact
      {
         return new b2CircleContact();
      }
      
      public static function §,#?§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §`"R§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§`"R§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::4"F.GetBody();
         var _loc2_:b2Body = b2internal::'"n.GetBody();
         b2Collision.§@D§(b2internal::<"O,b2internal::4"F.GetShape() as b2CircleShape,_loc1_.m_xf,b2internal::'"n.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
