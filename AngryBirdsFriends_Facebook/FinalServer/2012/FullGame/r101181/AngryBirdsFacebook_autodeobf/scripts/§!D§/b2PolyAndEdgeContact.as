package §!D§
{
   import §#]§.b2Transform;
   import §4!!§.b2Settings;
   import §4!!§.b2internal;
   import §48§.b2Body;
   import §48§.b2Fixture;
   import §55§.b2Manifold;
   import §<!`§.b2EdgeShape;
   import §<!`§.b2PolygonShape;
   import §<!`§.b2Shape;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function §?!Q§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §'S§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §<t§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§<t§(param1,param2);
         b2Settings.b2Assert(param1.§"r§() == b2Shape.§@!#§);
         b2Settings.b2Assert(param2.§"r§() == b2Shape.§`M§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::3t.GetBody();
         var _loc2_:b2Body = b2internal::?!p.GetBody();
         this.§6!s§(b2internal::@! ,b2internal::3t.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::?!p.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §6!s§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
