package §1z§
{
   import § Y§.b2PolygonShape;
   import §<!L§.b2Body;
   import §<!L§.b2Fixture;
   import §?F§.b2Collision;
   import §[!$§.b2internal;
   
   use namespace b2internal;
   
   public class b2PolygonContact extends b2Contact
   {
       
      
      public function b2PolygonContact()
      {
         super();
      }
      
      public static function §8y§(param1:*) : b2Contact
      {
         return new b2PolygonContact();
      }
      
      public static function §#2§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §>[§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§>[§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::[![.GetBody();
         var _loc2_:b2Body = b2internal::1J.GetBody();
         b2Collision.§5!B§(b2internal::%Q,b2internal::[![.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::1J.GetShape() as b2PolygonShape,_loc2_.m_xf);
      }
   }
}
