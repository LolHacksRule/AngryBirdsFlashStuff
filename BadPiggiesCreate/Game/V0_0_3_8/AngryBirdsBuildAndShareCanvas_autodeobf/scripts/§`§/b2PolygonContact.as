package §`§
{
   import §&!n§.b2Collision;
   import §2!Q§.b2PolygonShape;
   import §8,§.b2internal;
   import §?!E§.b2Body;
   import §?!E§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2PolygonContact extends b2Contact
   {
       
      
      public function b2PolygonContact()
      {
         super();
      }
      
      public static function §-"$§(param1:*) : b2Contact
      {
         return new b2PolygonContact();
      }
      
      public static function §@!,§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §8!<§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§8!<§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::+!u.GetBody();
         var _loc2_:b2Body = b2internal::6h.GetBody();
         b2Collision.§2j§(b2internal::7`,b2internal::+!u.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::6h.GetShape() as b2PolygonShape,_loc2_.m_xf);
      }
   }
}
