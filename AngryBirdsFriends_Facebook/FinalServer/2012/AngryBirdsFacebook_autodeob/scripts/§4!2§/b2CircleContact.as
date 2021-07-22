package §4!2§
{
   import § !0§.b2Collision;
   import §&!Y§.b2Body;
   import §&!Y§.b2Fixture;
   import §+!d§.b2CircleShape;
   import §@!a§.b2internal;
   
   use namespace b2internal;
   
   public class b2CircleContact extends b2Contact
   {
       
      
      public function b2CircleContact()
      {
         super();
      }
      
      public static function §]!e§(param1:*) : b2Contact
      {
         return new b2CircleContact();
      }
      
      public static function §]!f§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §["=§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§["=§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::9!E.GetBody();
         var _loc2_:b2Body = b2internal::5m.GetBody();
         b2Collision.§4"1§(b2internal::'R,b2internal::9!E.GetShape() as b2CircleShape,_loc1_.m_xf,b2internal::5m.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
