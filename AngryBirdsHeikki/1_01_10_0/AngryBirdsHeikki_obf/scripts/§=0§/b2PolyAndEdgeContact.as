package §=0§
{
   import §!4§.b2Manifold;
   import §3!R§.b2Body;
   import §3!R§.b2Fixture;
   import §6A§.b2Transform;
   import §7q§.b2EdgeShape;
   import §7q§.b2PolygonShape;
   import §7q§.b2Shape;
   import §^P§.b2Settings;
   import §^P§.b2internal;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function §;O§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §;!^§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §;!C§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§;!C§(param1,param2);
         b2Settings.b2Assert(param1.§0i§() == b2Shape.§=!'§);
         b2Settings.b2Assert(param2.§0i§() == b2Shape.§%m§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::&4.GetBody();
         var _loc2_:b2Body = b2internal::;,.GetBody();
         this.§7y§(b2internal::1`,b2internal::&4.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::;,.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §7y§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
