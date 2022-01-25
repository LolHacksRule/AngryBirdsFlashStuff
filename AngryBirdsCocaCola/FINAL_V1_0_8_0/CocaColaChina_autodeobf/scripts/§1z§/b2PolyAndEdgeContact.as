package §1z§
{
   import § Y§.b2EdgeShape;
   import § Y§.b2PolygonShape;
   import § Y§.b2Shape;
   import §6V§.b2Transform;
   import §<!L§.b2Body;
   import §<!L§.b2Fixture;
   import §?F§.b2Manifold;
   import §[!$§.b2Settings;
   import §[!$§.b2internal;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function §8y§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §#2§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §>[§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§>[§(param1,param2);
         b2Settings.b2Assert(param1.§1k§() == b2Shape.§"!c§);
         b2Settings.b2Assert(param2.§1k§() == b2Shape.§=m§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::[![.GetBody();
         var _loc2_:b2Body = b2internal::1J.GetBody();
         this.§'f§(b2internal::%Q,b2internal::[![.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::1J.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §'f§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
