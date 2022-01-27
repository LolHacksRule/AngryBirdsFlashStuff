package §=!n§
{
   import §'!&§.b2Body;
   import §'!&§.b2Fixture;
   import §,Z§.b2EdgeShape;
   import §,Z§.b2PolygonShape;
   import §,Z§.b2Shape;
   import §3c§.b2Manifold;
   import §9t§.b2Transform;
   import §@!'§.b2Settings;
   import §@!'§.b2internal;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function §]H§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §^!a§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §`"<§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§`"<§(param1,param2);
         b2Settings.b2Assert(param1.§@!N§() == b2Shape.§4"+§);
         b2Settings.b2Assert(param2.§@!N§() == b2Shape.§0"§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::;"B.GetBody();
         var _loc2_:b2Body = b2internal::8q.GetBody();
         this.§5"4§(b2internal::8!?,b2internal::;"B.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::8q.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §5"4§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
