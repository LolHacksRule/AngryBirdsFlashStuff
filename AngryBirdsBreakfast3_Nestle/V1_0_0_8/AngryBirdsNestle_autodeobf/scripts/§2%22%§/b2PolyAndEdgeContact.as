package §2"%§
{
   import §-j§.b2Manifold;
   import §7!F§.b2Settings;
   import §7!F§.b2internal;
   import §=!c§.b2Body;
   import §=!c§.b2Fixture;
   import §[K§.b2Transform;
   import §[e§.b2EdgeShape;
   import §[e§.b2PolygonShape;
   import §[e§.b2Shape;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function §<!n§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §6!j§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §&-§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§&-§(param1,param2);
         b2Settings.b2Assert(param1.§&!u§() == b2Shape.§+"0§);
         b2Settings.b2Assert(param2.§&!u§() == b2Shape.§%c§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::`!P.GetBody();
         var _loc2_:b2Body = b2internal::%!.GetBody();
         this.§8!k§(b2internal::8n,b2internal::`!P.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::%!.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §8!k§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
