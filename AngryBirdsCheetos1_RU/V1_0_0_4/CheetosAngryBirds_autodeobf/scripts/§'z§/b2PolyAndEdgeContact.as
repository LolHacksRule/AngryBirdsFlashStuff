package §'z§
{
   import §"v§.b2Settings;
   import §"v§.b2internal;
   import §&i§.b2Body;
   import §&i§.b2Fixture;
   import §5!K§.b2Transform;
   import §]M§.b2Manifold;
   import §each §.b2EdgeShape;
   import §each §.b2PolygonShape;
   import §each §.b2Shape;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function §#![§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §%P§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §"L§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§"L§(param1,param2);
         b2Settings.b2Assert(param1.§"5§() == b2Shape.§case §);
         b2Settings.b2Assert(param2.§"5§() == b2Shape.§%B§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::&L.GetBody();
         var _loc2_:b2Body = b2internal::8! .GetBody();
         this.§';§(b2internal::8b,b2internal::&L.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::8! .GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §';§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
