package §4]§
{
   import §#I§.b2Body;
   import §#I§.b2Fixture;
   import §&H§.b2Transform;
   import §3b§.b2EdgeShape;
   import §3b§.b2PolygonShape;
   import §3b§.b2Shape;
   import §>!Z§.b2Manifold;
   import §@!3§.b2Settings;
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function §1!Y§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §=_§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §2I§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§2I§(param1,param2);
         b2Settings.b2Assert(param1.§ 5§() == b2Shape.§=&§);
         b2Settings.b2Assert(param2.§ 5§() == b2Shape.§=n§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::]V.GetBody();
         var _loc2_:b2Body = b2internal::!j.GetBody();
         this.§+'§(b2internal::7!l,b2internal::]V.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::!j.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §+'§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
