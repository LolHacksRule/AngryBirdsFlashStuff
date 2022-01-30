package §!!o§
{
   import §,P§.b2Collision;
   import §9"5§.b2Body;
   import §9"5§.b2Fixture;
   import §>!R§.b2Settings;
   import §>!R§.b2internal;
   import §>"&§.b2CircleShape;
   import §>"&§.b2PolygonShape;
   import §>"&§.b2Shape;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function §0!8§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §&`§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §=a§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§=a§(param1,param2);
         b2Settings.b2Assert(param1.§4!C§() == b2Shape.§`g§);
         b2Settings.b2Assert(param2.§4!C§() == b2Shape.§+;§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::4<.m_body;
         var _loc2_:b2Body = b2internal::6%.m_body;
         b2Collision.§8!P§(b2internal::@"$,b2internal::4<.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::6%.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
