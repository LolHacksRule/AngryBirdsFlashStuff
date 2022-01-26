package §_-fl§
{
   import §_-00B§.b2Body;
   import §_-00B§.b2Fixture;
   import §_-Jf§.b2Settings;
   import §_-Jf§.b2internal;
   import §_-Kz§.b2Manifold;
   import §_-OY§.b2EdgeShape;
   import §_-OY§.b2PolygonShape;
   import §_-OY§.b2Shape;
   import §_-Vn§.b2Transform;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function §null §(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §_-TB§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §_-ej§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§_-ej§(param1,param2);
         b2Settings.b2Assert(param1.§_-n§() == b2Shape.§_-8u§);
         b2Settings.b2Assert(param2.§_-n§() == b2Shape.§_-Jk§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::_-a9.GetBody();
         var _loc2_:b2Body = b2internal::_-2b.GetBody();
         this.§_-J5§(b2internal::_-LF,b2internal::_-a9.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::_-2b.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §_-J5§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
