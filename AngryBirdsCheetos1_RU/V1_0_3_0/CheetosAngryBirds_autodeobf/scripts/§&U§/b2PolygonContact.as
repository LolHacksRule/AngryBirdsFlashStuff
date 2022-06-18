package §&U§
{
   import §"x§.b2PolygonShape;
   import §#,§.b2internal;
   import §4]§.b2Body;
   import §4]§.b2Fixture;
   import §7$§.b2Collision;
   
   use namespace b2internal;
   
   public class b2PolygonContact extends b2Contact
   {
       
      
      public function b2PolygonContact()
      {
         super();
      }
      
      public static function §[?§(param1:*) : b2Contact
      {
         return new b2PolygonContact();
      }
      
      public static function §^!K§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §[]§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§[]§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::`3.GetBody();
         var _loc2_:b2Body = b2internal::+!D.GetBody();
         b2Collision.§%r§(b2internal::]k,b2internal::`3.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::+!D.GetShape() as b2PolygonShape,_loc2_.m_xf);
      }
   }
}
