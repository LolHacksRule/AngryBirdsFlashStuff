package §4!2§
{
   import § !0§.b2Collision;
   import §&!Y§.b2Body;
   import §&!Y§.b2Fixture;
   import §+!d§.b2PolygonShape;
   import §@!a§.b2internal;
   
   use namespace b2internal;
   
   public class b2PolygonContact extends b2Contact
   {
       
      
      public function b2PolygonContact()
      {
         super();
      }
      
      public static function §]!e§(param1:*) : b2Contact
      {
         return new b2PolygonContact();
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
         b2Collision.§%!O§(b2internal::'R,b2internal::9!E.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::5m.GetShape() as b2PolygonShape,_loc2_.m_xf);
      }
   }
}
