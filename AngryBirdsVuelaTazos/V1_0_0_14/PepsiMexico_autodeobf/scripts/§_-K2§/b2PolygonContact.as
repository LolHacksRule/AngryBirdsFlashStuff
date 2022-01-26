package §_-K2§
{
   import §_-bW§.b2internal;
   import §_-iw§.b2Collision;
   import §_-yJ§.b2PolygonShape;
   import §const§.b2Body;
   import §const§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2PolygonContact extends b2Contact
   {
       
      
      public function b2PolygonContact()
      {
         super();
      }
      
      public static function §_-mA§(param1:*) : b2Contact
      {
         return new b2PolygonContact();
      }
      
      public static function §_-T9§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §_-iK§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§_-iK§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::_-S9.GetBody();
         var _loc2_:b2Body = b2internal::_-Z7.GetBody();
         b2Collision.§_-rb§(b2internal::_-Vd,b2internal::_-S9.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::_-Z7.GetShape() as b2PolygonShape,_loc2_.m_xf);
      }
   }
}
