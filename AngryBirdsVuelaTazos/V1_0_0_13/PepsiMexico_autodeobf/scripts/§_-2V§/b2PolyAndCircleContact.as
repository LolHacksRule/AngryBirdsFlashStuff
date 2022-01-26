package §_-2V§
{
   import §_-8i§.b2CircleShape;
   import §_-8i§.b2PolygonShape;
   import §_-8i§.b2Shape;
   import §_-SM§.b2Settings;
   import §_-SM§.b2internal;
   import §_-qW§.b2Body;
   import §_-qW§.b2Fixture;
   import §_-wZ§.b2Collision;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function §_-0K§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §_-l6§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §_-ut§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§_-ut§(param1,param2);
         b2Settings.b2Assert(param1.§_-kK§() == b2Shape.§_-Bp§);
         b2Settings.b2Assert(param2.§_-kK§() == b2Shape.§_-LV§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::_-ow.m_body;
         var _loc2_:b2Body = b2internal::_-10.m_body;
         b2Collision.§_-oL§(b2internal::_-iN,b2internal::_-ow.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::_-10.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
