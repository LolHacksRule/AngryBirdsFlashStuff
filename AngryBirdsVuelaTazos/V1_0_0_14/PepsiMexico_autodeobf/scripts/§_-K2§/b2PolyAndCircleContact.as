package §_-K2§
{
   import §_-bW§.b2Settings;
   import §_-bW§.b2internal;
   import §_-iw§.b2Collision;
   import §_-yJ§.b2CircleShape;
   import §_-yJ§.b2PolygonShape;
   import §_-yJ§.b2Shape;
   import §const§.b2Body;
   import §const§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function §_-mA§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §_-T9§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §_-iK§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§_-iK§(param1,param2);
         b2Settings.b2Assert(param1.§_-hZ§() == b2Shape.§_-yl§);
         b2Settings.b2Assert(param2.§_-hZ§() == b2Shape.§_-x7§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::_-S9.m_body;
         var _loc2_:b2Body = b2internal::_-Z7.m_body;
         b2Collision.§_-ji§(b2internal::_-Vd,b2internal::_-S9.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::_-Z7.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
