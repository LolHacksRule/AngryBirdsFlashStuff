package §@^§
{
   import §%]§.b2Collision;
   import §3'§.b2internal;
   import §=u§.b2PolygonShape;
   import §?!F§.b2Body;
   import §?!F§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2PolygonContact extends b2Contact
   {
       
      
      public function b2PolygonContact()
      {
         super();
      }
      
      public static function §<!E§(param1:*) : b2Contact
      {
         return new b2PolygonContact();
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
         b2Collision.§3!b§(b2internal::#!",b2internal::9!0.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::#;.GetShape() as b2PolygonShape,_loc2_.m_xf);
      }
   }
}
