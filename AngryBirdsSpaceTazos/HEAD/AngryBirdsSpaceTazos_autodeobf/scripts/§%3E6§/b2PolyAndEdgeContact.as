package §>6§
{
   import §'!a§.b2Settings;
   import §'!a§.b2internal;
   import §4!W§.b2EdgeShape;
   import §4!W§.b2PolygonShape;
   import §4!W§.b2Shape;
   import §6!n§.b2Transform;
   import §9!K§.b2Body;
   import §9!K§.b2Fixture;
   import §;!Z§.b2Manifold;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function §7;§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §7"'§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §2!U§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§2!U§(param1,param2);
         b2Settings.b2Assert(param1.§finally§() == b2Shape.§>b§);
         b2Settings.b2Assert(param2.§finally§() == b2Shape.§[!e§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::1!g.GetBody();
         var _loc2_:b2Body = b2internal::@4.GetBody();
         this.§<V§(b2internal::-"7,b2internal::1!g.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::@4.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §<V§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
