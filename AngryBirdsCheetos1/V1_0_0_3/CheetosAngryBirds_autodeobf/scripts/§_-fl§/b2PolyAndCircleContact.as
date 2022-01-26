package §_-fl§
{
   import §_-00B§.b2Body;
   import §_-00B§.b2Fixture;
   import §_-Jf§.b2Settings;
   import §_-Jf§.b2internal;
   import §_-Kz§.b2Collision;
   import §_-OY§.b2CircleShape;
   import §_-OY§.b2PolygonShape;
   import §_-OY§.b2Shape;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function §null §(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §_-TB§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §_-ej§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§_-ej§(param1,param2);
         b2Settings.b2Assert(param1.§_-n§() == b2Shape.§_-8u§);
         b2Settings.b2Assert(param2.§_-n§() == b2Shape.§_-b9§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::_-a9.m_body;
         var _loc2_:b2Body = b2internal::_-2b.m_body;
         b2Collision.§_-Um§(b2internal::_-LF,b2internal::_-a9.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::_-2b.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
