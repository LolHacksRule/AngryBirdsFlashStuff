package §'!#§
{
   import §'!3§.b2internal;
   import §9!$§.b2Collision;
   import §?0§.b2Body;
   import §?0§.b2Fixture;
   import §@,§.b2PolygonShape;
   
   use namespace b2internal;
   
   public class b2PolygonContact extends b2Contact
   {
       
      
      public function b2PolygonContact()
      {
         super();
      }
      
      public static function § V§(param1:*) : b2Contact
      {
         return new b2PolygonContact();
      }
      
      public static function §"z§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §5!X§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§5!X§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::8!7.GetBody();
         var _loc2_:b2Body = b2internal::86.GetBody();
         b2Collision.§ O§(b2internal::0!M,b2internal::8!7.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::86.GetShape() as b2PolygonShape,_loc2_.m_xf);
      }
   }
}
