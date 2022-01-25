package §`!O§
{
   import § Y§.b2Manifold;
   import §#!M§.b2Settings;
   import §#!M§.b2internal;
   import §4U§.b2Body;
   import §4U§.b2Fixture;
   import §<!8§.b2Transform;
   import §>![§.b2EdgeShape;
   import §>![§.b2PolygonShape;
   import §>![§.b2Shape;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function §&!W§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §'D§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §&4§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§&4§(param1,param2);
         b2Settings.b2Assert(param1.§6`§() == b2Shape.§6!2§);
         b2Settings.b2Assert(param2.§6`§() == b2Shape.§-!<§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::'c.GetBody();
         var _loc2_:b2Body = b2internal::"!^.GetBody();
         this.§]!1§(b2internal::^v,b2internal::'c.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::"!^.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §]!1§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
