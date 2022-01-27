package §;!U§
{
   import §!O§.b2EdgeShape;
   import §!O§.b2PolygonShape;
   import §!O§.b2Shape;
   import §0!=§.b2Transform;
   import §0!?§.b2Body;
   import §0!?§.b2Fixture;
   import §0^§.b2Settings;
   import §0^§.b2internal;
   import §`!E§.b2Manifold;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function §6>§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §>s§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §@%§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§@%§(param1,param2);
         b2Settings.b2Assert(param1.§7"§() == b2Shape.§ !T§);
         b2Settings.b2Assert(param2.§7"§() == b2Shape.§,z§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::&'.GetBody();
         var _loc2_:b2Body = b2internal::[!d.GetBody();
         this.§0i§(b2internal::8g,b2internal::&'.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::[!d.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §0i§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
