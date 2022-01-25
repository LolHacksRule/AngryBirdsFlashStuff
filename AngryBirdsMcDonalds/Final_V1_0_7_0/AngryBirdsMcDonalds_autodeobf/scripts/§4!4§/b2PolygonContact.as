package §4!4§
{
   import §&!P§.b2Collision;
   import §+!o§.b2PolygonShape;
   import §-0§.b2Body;
   import §-0§.b2Fixture;
   import §@g§.b2internal;
   
   use namespace b2internal;
   
   public class b2PolygonContact extends b2Contact
   {
       
      
      public function b2PolygonContact()
      {
         super();
      }
      
      public static function §6j§(param1:*) : b2Contact
      {
         return new b2PolygonContact();
      }
      
      public static function § B§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §<L§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§<L§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::0!b.GetBody();
         var _loc2_:b2Body = b2internal::&a.GetBody();
         b2Collision.§4![§(b2internal::5R,b2internal::0!b.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::&a.GetShape() as b2PolygonShape,_loc2_.m_xf);
      }
   }
}
