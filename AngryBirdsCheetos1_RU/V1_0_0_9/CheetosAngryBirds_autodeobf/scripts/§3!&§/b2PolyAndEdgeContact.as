package §3!&§
{
   import §!!B§.b2Body;
   import §!!B§.b2Fixture;
   import §5p§.b2EdgeShape;
   import §5p§.b2PolygonShape;
   import §5p§.b2Shape;
   import §7S§.b2Manifold;
   import §;0§.b2Settings;
   import §;0§.b2internal;
   import §;U§.b2Transform;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function §=S§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §true§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §9-§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§9-§(param1,param2);
         b2Settings.b2Assert(param1.§9o§() == b2Shape.§%1§);
         b2Settings.b2Assert(param2.§9o§() == b2Shape.§9!M§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::=N.GetBody();
         var _loc2_:b2Body = b2internal::?P.GetBody();
         this.§!!$§(b2internal::+P,b2internal::=N.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::?P.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §!!$§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
