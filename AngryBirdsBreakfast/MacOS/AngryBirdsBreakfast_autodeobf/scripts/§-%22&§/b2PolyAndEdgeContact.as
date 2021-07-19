package §-"&§
{
   import §"y§.b2EdgeShape;
   import §"y§.b2PolygonShape;
   import §"y§.b2Shape;
   import §'F§.b2Settings;
   import §'F§.b2internal;
   import §3!`§.b2Body;
   import §3!`§.b2Fixture;
   import §6Z§.b2Transform;
   import §^9§.b2Manifold;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function §2#§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §5f§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §?!r§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§?!r§(param1,param2);
         b2Settings.b2Assert(param1.§<!A§() == b2Shape.§2e§);
         b2Settings.b2Assert(param2.§<!A§() == b2Shape.§[!Q§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::]R.GetBody();
         var _loc2_:b2Body = b2internal::7!&.GetBody();
         this.§9!z§(b2internal::=!P,b2internal::]R.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::7!&.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §9!z§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
