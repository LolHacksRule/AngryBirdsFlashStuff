package §2"%§
{
   import §-j§.b2Collision;
   import §7!F§.b2internal;
   import §=!c§.b2Body;
   import §=!c§.b2Fixture;
   import §[e§.b2PolygonShape;
   
   use namespace b2internal;
   
   public class b2PolygonContact extends b2Contact
   {
       
      
      public function b2PolygonContact()
      {
         super();
      }
      
      public static function §<!n§(param1:*) : b2Contact
      {
         return new b2PolygonContact();
      }
      
      public static function §6!j§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §&-§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§&-§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::`!P.GetBody();
         var _loc2_:b2Body = b2internal::%!.GetBody();
         b2Collision.§^@§(b2internal::8n,b2internal::`!P.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::%!.GetShape() as b2PolygonShape,_loc2_.m_xf);
      }
   }
}
