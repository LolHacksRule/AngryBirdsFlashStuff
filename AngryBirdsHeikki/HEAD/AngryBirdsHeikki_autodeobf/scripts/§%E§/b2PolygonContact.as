package §%E§
{
   import §+d§.b2Body;
   import §+d§.b2Fixture;
   import §6%§.b2internal;
   import §8`§.b2PolygonShape;
   import §=n§.b2Collision;
   
   use namespace b2internal;
   
   public class b2PolygonContact extends b2Contact
   {
       
      
      public function b2PolygonContact()
      {
         super();
      }
      
      public static function §2!f§(param1:*) : b2Contact
      {
         return new b2PolygonContact();
      }
      
      public static function §9!1§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §"!K§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§"!K§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::[!d.GetBody();
         var _loc2_:b2Body = b2internal::#!^.GetBody();
         b2Collision.§+!B§(b2internal::>!b,b2internal::[!d.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::#!^.GetShape() as b2PolygonShape,_loc2_.m_xf);
      }
   }
}
