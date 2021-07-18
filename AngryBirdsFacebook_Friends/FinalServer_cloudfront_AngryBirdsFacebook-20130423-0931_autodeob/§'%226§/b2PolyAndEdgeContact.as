package §'"6§
{
   import §!"3§.b2EdgeShape;
   import §!"3§.b2PolygonShape;
   import §!"3§.b2Shape;
   import §'"-§.b2Manifold;
   import §,"[§.b2Settings;
   import §,"[§.b2internal;
   import §6!^§.b2Transform;
   import §6"1§.b2Body;
   import §6"1§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function §3!N§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §2!s§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §<"U§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§<"U§(param1,param2);
         b2Settings.b2Assert(param1.§>!f§() == b2Shape.§8x§);
         b2Settings.b2Assert(param2.§>!f§() == b2Shape.§?!7§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::4!?.GetBody();
         var _loc2_:b2Body = b2internal::3!B.GetBody();
         this.§implements§(b2internal::<!+,b2internal::4!?.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::3!B.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §implements§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
