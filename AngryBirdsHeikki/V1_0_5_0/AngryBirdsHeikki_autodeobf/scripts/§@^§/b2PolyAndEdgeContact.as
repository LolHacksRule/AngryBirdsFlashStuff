package §@^§
{
   import §%]§.b2Manifold;
   import §,!3§.b2Transform;
   import §3'§.b2Settings;
   import §3'§.b2internal;
   import §=u§.b2EdgeShape;
   import §=u§.b2PolygonShape;
   import §=u§.b2Shape;
   import §?!F§.b2Body;
   import §?!F§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function §<!E§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §[!,§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §super§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§super§(param1,param2);
         b2Settings.b2Assert(param1.§[!H§() == b2Shape.§1!J§);
         b2Settings.b2Assert(param2.§[!H§() == b2Shape.§<r§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::9!0.GetBody();
         var _loc2_:b2Body = b2internal::#;.GetBody();
         this.§;!$§(b2internal::#!",b2internal::9!0.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::#;.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §;!$§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
