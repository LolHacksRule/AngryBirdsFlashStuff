package §4!4§
{
   import §&!P§.b2Collision;
   import §+!o§.b2CircleShape;
   import §-0§.b2Body;
   import §-0§.b2Fixture;
   import §@g§.b2internal;
   
   use namespace b2internal;
   
   public class b2CircleContact extends b2Contact
   {
       
      
      public function b2CircleContact()
      {
         super();
      }
      
      public static function §6j§(param1:*) : b2Contact
      {
         return new b2CircleContact();
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
         b2Collision.§<![§(b2internal::5R,b2internal::0!b.GetShape() as b2CircleShape,_loc1_.m_xf,b2internal::&a.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
