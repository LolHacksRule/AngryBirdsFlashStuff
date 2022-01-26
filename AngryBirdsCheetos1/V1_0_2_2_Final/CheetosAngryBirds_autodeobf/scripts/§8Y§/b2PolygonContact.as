package §8Y§
{
   import §&U§.b2PolygonShape;
   import §2!F§.b2internal;
   import §9"§.b2Collision;
   import §`j§.b2Body;
   import §`j§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2PolygonContact extends b2Contact
   {
       
      
      public function b2PolygonContact()
      {
         super();
      }
      
      public static function §>y§(param1:*) : b2Contact
      {
         return new b2PolygonContact();
      }
      
      public static function §;@§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §8j§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§8j§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::1!,.GetBody();
         var _loc2_:b2Body = b2internal::7+.GetBody();
         b2Collision.§`6§(b2internal::&C,b2internal::1!,.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::7+.GetShape() as b2PolygonShape,_loc2_.m_xf);
      }
   }
}
