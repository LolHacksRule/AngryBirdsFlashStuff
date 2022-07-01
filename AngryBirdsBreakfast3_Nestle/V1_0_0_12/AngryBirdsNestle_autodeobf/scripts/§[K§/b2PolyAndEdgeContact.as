package §[K§
{
   import §'I§.b2Settings;
   import §'I§.b2internal;
   import §7!&§.b2Manifold;
   import §9!Z§.b2Body;
   import §9!Z§.b2Fixture;
   import §?"'§.b2Transform;
   import §`!C§.b2EdgeShape;
   import §`!C§.b2PolygonShape;
   import §`!C§.b2Shape;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function §&y§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §"!,§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §`p§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§`p§(param1,param2);
         b2Settings.b2Assert(param1.§&r§() == b2Shape.§?"#§);
         b2Settings.b2Assert(param2.§&r§() == b2Shape.§4!7§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::,!V.GetBody();
         var _loc2_:b2Body = b2internal::-"0.GetBody();
         this.§,!_§(b2internal::1!&,b2internal::,!V.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::-"0.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §,!_§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
