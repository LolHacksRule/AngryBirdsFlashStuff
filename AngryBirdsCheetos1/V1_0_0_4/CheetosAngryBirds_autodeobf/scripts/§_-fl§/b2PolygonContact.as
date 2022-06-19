package §_-fl§
{
   import §_-00B§.b2Body;
   import §_-00B§.b2Fixture;
   import §_-Jf§.b2internal;
   import §_-Kz§.b2Collision;
   import §_-OY§.b2PolygonShape;
   
   use namespace b2internal;
   
   public class b2PolygonContact extends b2Contact
   {
       
      
      public function b2PolygonContact()
      {
         super();
      }
      
      public static function §null §(param1:*) : b2Contact
      {
         return new b2PolygonContact();
      }
      
      public static function §_-TB§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §_-ej§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§_-ej§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::_-a9.GetBody();
         var _loc2_:b2Body = b2internal::_-2b.GetBody();
         b2Collision.§_-NN§(b2internal::_-LF,b2internal::_-a9.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::_-2b.GetShape() as b2PolygonShape,_loc2_.m_xf);
      }
   }
}
