package §0b§
{
   import § y§.b2Body;
   import § y§.b2Fixture;
   import §!u§.b2Manifold;
   import §54§.b2Settings;
   import §54§.b2internal;
   import §;h§.b2Transform;
   import §]!7§.b2EdgeShape;
   import §]!7§.b2PolygonShape;
   import §]!7§.b2Shape;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function §`Q§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §5!,§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §+!K§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§+!K§(param1,param2);
         b2Settings.b2Assert(param1.§`!Q§() == b2Shape.§3!D§);
         b2Settings.b2Assert(param2.§`!Q§() == b2Shape.§,F§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::31.GetBody();
         var _loc2_:b2Body = b2internal::`>.GetBody();
         this.§4!I§(b2internal::=!c,b2internal::31.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::`>.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §4!I§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
