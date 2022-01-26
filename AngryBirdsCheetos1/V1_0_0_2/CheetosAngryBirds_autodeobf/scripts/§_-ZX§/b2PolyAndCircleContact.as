package §_-ZX§
{
   import § if§.b2CircleShape;
   import § if§.b2PolygonShape;
   import § if§.b2Shape;
   import §_-43§.b2Body;
   import §_-43§.b2Fixture;
   import §_-Jx§.b2Collision;
   import §_-d6§.b2Settings;
   import §_-d6§.b2internal;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function §_-6l§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §_-TI§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §_-1c§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§_-1c§(param1,param2);
         b2Settings.b2Assert(param1.§_-cT§() == b2Shape.§_-Wf§);
         b2Settings.b2Assert(param2.§_-cT§() == b2Shape.§_-4p§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::_-pQ.m_body;
         var _loc2_:b2Body = b2internal::_-mY.m_body;
         b2Collision.§_-uN§(b2internal::_-GH,b2internal::_-pQ.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::_-mY.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
