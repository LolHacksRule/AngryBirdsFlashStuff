package §_-cw§
{
   import §_-26§.b2CircleShape;
   import §_-26§.b2PolygonShape;
   import §_-26§.b2Shape;
   import §_-WW§.b2Body;
   import §_-WW§.b2Fixture;
   import §_-iO§.b2Settings;
   import §_-iO§.b2internal;
   import §_-tK§.b2Collision;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function §_-JU§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §_-Hh§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §_-Mm§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§_-Mm§(param1,param2);
         b2Settings.b2Assert(param1.§_-AY§() == b2Shape.§_-fB§);
         b2Settings.b2Assert(param2.§_-AY§() == b2Shape.§_-UU§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::_-Ny.m_body;
         var _loc2_:b2Body = b2internal::_-83.m_body;
         b2Collision.§_-RY§(b2internal::_-Er,b2internal::_-Ny.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::_-83.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
