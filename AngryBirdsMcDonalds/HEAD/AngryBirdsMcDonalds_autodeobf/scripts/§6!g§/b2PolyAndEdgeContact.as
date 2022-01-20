package §6!g§
{
   import §+S§.b2Transform;
   import §,!V§.b2Manifold;
   import §8T§.b2Body;
   import §8T§.b2Fixture;
   import §<!D§.b2EdgeShape;
   import §<!D§.b2PolygonShape;
   import §<!D§.b2Shape;
   import §?!n§.b2Settings;
   import §?!n§.b2internal;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function §[u§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §60§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §2!R§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§2!R§(param1,param2);
         b2Settings.b2Assert(param1.§1l§() == b2Shape.§%'§);
         b2Settings.b2Assert(param2.§1l§() == b2Shape.§&!n§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::3!K.GetBody();
         var _loc2_:b2Body = b2internal::!!b.GetBody();
         this.§>!F§(b2internal::&!9,b2internal::3!K.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::!!b.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §>!F§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
