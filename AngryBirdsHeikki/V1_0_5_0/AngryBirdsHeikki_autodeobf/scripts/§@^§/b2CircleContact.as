package §@^§
{
   import §%]§.b2Collision;
   import §3'§.b2internal;
   import §=u§.b2CircleShape;
   import §?!F§.b2Body;
   import §?!F§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2CircleContact extends b2Contact
   {
       
      
      public function b2CircleContact()
      {
         super();
      }
      
      public static function §<!E§(param1:*) : b2Contact
      {
         return new b2CircleContact();
      }
      
      public static function §[!,§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §super§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§super§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::9!0.GetBody();
         var _loc2_:b2Body = b2internal::#;.GetBody();
         b2Collision.§[M§(b2internal::#!",b2internal::9!0.GetShape() as b2CircleShape,_loc1_.m_xf,b2internal::#;.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
