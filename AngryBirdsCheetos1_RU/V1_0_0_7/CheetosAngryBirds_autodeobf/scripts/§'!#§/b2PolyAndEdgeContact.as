package §'!#§
{
   import §'!3§.b2Settings;
   import §'!3§.b2internal;
   import §3q§.b2Transform;
   import §9!$§.b2Manifold;
   import §?0§.b2Body;
   import §?0§.b2Fixture;
   import §@,§.b2EdgeShape;
   import §@,§.b2PolygonShape;
   import §@,§.b2Shape;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function § V§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §"z§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §5!X§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§5!X§(param1,param2);
         b2Settings.b2Assert(param1.§1!A§() == b2Shape.§2!1§);
         b2Settings.b2Assert(param2.§1!A§() == b2Shape.§ _§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::8!7.GetBody();
         var _loc2_:b2Body = b2internal::86.GetBody();
         this.§8!W§(b2internal::0!M,b2internal::8!7.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::86.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §8!W§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
