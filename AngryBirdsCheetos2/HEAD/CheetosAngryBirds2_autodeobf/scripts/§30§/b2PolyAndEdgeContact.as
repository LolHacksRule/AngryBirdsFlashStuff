package §30§
{
   import § o§.b2Body;
   import § o§.b2Fixture;
   import §"0§.b2Settings;
   import §"0§.b2internal;
   import §-r§.b2Manifold;
   import §6!H§.b2Transform;
   import §]!S§.b2EdgeShape;
   import §]!S§.b2PolygonShape;
   import §]!S§.b2Shape;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function §#!M§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §[!$§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §2'§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§2'§(param1,param2);
         b2Settings.b2Assert(param1.§7!_§() == b2Shape.§"![§);
         b2Settings.b2Assert(param2.§7!_§() == b2Shape.§#!D§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::45.GetBody();
         var _loc2_:b2Body = b2internal::?G.GetBody();
         this.§#!N§(b2internal::-0,b2internal::45.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::?G.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §#!N§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
