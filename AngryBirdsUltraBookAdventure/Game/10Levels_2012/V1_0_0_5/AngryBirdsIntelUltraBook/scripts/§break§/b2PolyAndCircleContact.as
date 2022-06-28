package §break§
{
   import §2!+§.b2CircleShape;
   import §2!+§.b2PolygonShape;
   import §2!+§.b2Shape;
   import §7!u§.b2Settings;
   import §7!u§.b2internal;
   import §72§.b2Collision;
   import §`w§.b2Body;
   import §`w§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function §`4§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §[M§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §<!e§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§<!e§(param1,param2);
         b2Settings.b2Assert(param1.§2!r§() == b2Shape.§6!t§);
         b2Settings.b2Assert(param2.§2!r§() == b2Shape.§=! §);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::50.m_body;
         var _loc2_:b2Body = b2internal::'z.m_body;
         b2Collision.§ case§(b2internal::"!m,b2internal::50.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::'z.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
