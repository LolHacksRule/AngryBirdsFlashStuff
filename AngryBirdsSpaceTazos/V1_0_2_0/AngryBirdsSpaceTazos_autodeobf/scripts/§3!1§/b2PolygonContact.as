package §3!1§
{
   import §#!X§.b2Body;
   import §#!X§.b2Fixture;
   import §3m§.b2Collision;
   import §?f§.b2PolygonShape;
   import §@!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2PolygonContact extends b2Contact
   {
       
      
      public function b2PolygonContact()
      {
         super();
      }
      
      public static function §;8§(param1:*) : b2Contact
      {
         return new b2PolygonContact();
      }
      
      public static function §5[§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §3"8§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§3"8§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::break.GetBody();
         var _loc2_:b2Body = b2internal::`!y.GetBody();
         b2Collision.§7!v§(b2internal::;!z,b2internal::break.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::`!y.GetShape() as b2PolygonShape,_loc2_.m_xf);
      }
   }
}
