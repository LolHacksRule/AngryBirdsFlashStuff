package §'!J§
{
   import §&x§.b2Body;
   import §&x§.b2Fixture;
   import §-!T§.b2Manifold;
   import §0,§.b2Transform;
   import §3o§.b2Settings;
   import §3o§.b2internal;
   import §8!b§.b2EdgeShape;
   import §8!b§.b2PolygonShape;
   import §8!b§.b2Shape;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function §;!1§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function § ;§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §?r§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§?r§(param1,param2);
         b2Settings.b2Assert(param1.§"!I§() == b2Shape.§5!e§);
         b2Settings.b2Assert(param2.§"!I§() == b2Shape.§7H§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal:: `.GetBody();
         var _loc2_:b2Body = b2internal::"!9.GetBody();
         this.§5`§(b2internal::1z,b2internal:: `.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::"!9.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §5`§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
