package §;!U§
{
   import §!O§.b2PolygonShape;
   import §0!?§.b2Body;
   import §0!?§.b2Fixture;
   import §0^§.b2internal;
   import §`!E§.b2Collision;
   
   use namespace b2internal;
   
   public class b2PolygonContact extends b2Contact
   {
       
      
      public function b2PolygonContact()
      {
         super();
      }
      
      public static function §6>§(param1:*) : b2Contact
      {
         return new b2PolygonContact();
      }
      
      public static function §>s§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §@%§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§@%§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::&'.GetBody();
         var _loc2_:b2Body = b2internal::[!d.GetBody();
         b2Collision.§1!Q§(b2internal::8g,b2internal::&'.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::[!d.GetShape() as b2PolygonShape,_loc2_.m_xf);
      }
   }
}
