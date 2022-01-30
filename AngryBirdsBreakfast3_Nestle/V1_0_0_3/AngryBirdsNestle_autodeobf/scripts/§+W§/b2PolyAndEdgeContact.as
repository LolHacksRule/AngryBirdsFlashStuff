package §+W§
{
   import § !%§.b2Settings;
   import § !%§.b2internal;
   import §,!k§.b2Transform;
   import §6f§.b2Manifold;
   import §;'§.b2Body;
   import §;'§.b2Fixture;
   import §?m§.b2EdgeShape;
   import §?m§.b2PolygonShape;
   import §?m§.b2Shape;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function §-",§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §'!h§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §,E§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§,E§(param1,param2);
         b2Settings.b2Assert(param1.§]"$§() == b2Shape.§!Y§);
         b2Settings.b2Assert(param2.§]"$§() == b2Shape.§3J§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::+"'.GetBody();
         var _loc2_:b2Body = b2internal::;!Z.GetBody();
         this.§8R§(b2internal::8!;,b2internal::+"'.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::;!Z.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §8R§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
