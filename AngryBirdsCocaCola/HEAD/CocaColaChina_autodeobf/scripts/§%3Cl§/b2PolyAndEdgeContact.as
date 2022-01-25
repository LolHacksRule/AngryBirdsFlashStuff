package §<l§
{
   import §&!L§.b2Transform;
   import §-!<§.b2EdgeShape;
   import §-!<§.b2PolygonShape;
   import §-!<§.b2Shape;
   import §3f§.b2Body;
   import §3f§.b2Fixture;
   import §7!C§.b2Settings;
   import §7!C§.b2internal;
   import §=!!§.b2Manifold;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function §?T§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §>h§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §0c§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§0c§(param1,param2);
         b2Settings.b2Assert(param1.§6`§() == b2Shape.§`F§);
         b2Settings.b2Assert(param2.§6`§() == b2Shape.§@"§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::^v.GetBody();
         var _loc2_:b2Body = b2internal::>!D.GetBody();
         this.§4k§(b2internal::;y,b2internal::^v.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::>!D.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §4k§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
