package §3!O§
{
   import § !5§.b2Settings;
   import § !5§.b2internal;
   import §+,§.b2Transform;
   import §-!$§.b2EdgeShape;
   import §-!$§.b2PolygonShape;
   import §-!$§.b2Shape;
   import §?§.b2Manifold;
   import §[W§.b2Body;
   import §[W§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function §2Q§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §;t§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §[X§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§[X§(param1,param2);
         b2Settings.b2Assert(param1.§@i§() == b2Shape.§0D§);
         b2Settings.b2Assert(param2.§@i§() == b2Shape.§]!]§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::-".GetBody();
         var _loc2_:b2Body = b2internal::@8.GetBody();
         this.§]!P§(b2internal::'!,,b2internal::-".GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::@8.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §]!P§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
