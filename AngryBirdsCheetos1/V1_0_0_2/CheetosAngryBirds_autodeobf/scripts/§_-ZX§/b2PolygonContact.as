package §_-ZX§
{
   import § if§.b2PolygonShape;
   import §_-43§.b2Body;
   import §_-43§.b2Fixture;
   import §_-Jx§.b2Collision;
   import §_-d6§.b2internal;
   
   use namespace b2internal;
   
   public class b2PolygonContact extends b2Contact
   {
       
      
      public function b2PolygonContact()
      {
         super();
      }
      
      public static function §_-6l§(param1:*) : b2Contact
      {
         return new b2PolygonContact();
      }
      
      public static function §_-TI§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §_-1c§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§_-1c§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::_-pQ.GetBody();
         var _loc2_:b2Body = b2internal::_-mY.GetBody();
         b2Collision.§_-k-§(b2internal::_-GH,b2internal::_-pQ.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::_-mY.GetShape() as b2PolygonShape,_loc2_.m_xf);
      }
   }
}
