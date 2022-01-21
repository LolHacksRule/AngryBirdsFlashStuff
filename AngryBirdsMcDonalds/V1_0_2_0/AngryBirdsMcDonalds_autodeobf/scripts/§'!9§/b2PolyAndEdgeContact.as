package §'!9§
{
   import §"U§.b2Transform;
   import §,7§.b2EdgeShape;
   import §,7§.b2PolygonShape;
   import §,7§.b2Shape;
   import §3!g§.b2Body;
   import §3!g§.b2Fixture;
   import §<!!§.b2Manifold;
   import §=!X§.b2Settings;
   import §=!X§.b2internal;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function § 9§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §+$§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §4`§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§4`§(param1,param2);
         b2Settings.b2Assert(param1.§^!A§() == b2Shape.§0!7§);
         b2Settings.b2Assert(param2.§^!A§() == b2Shape.§ h§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::2!G.GetBody();
         var _loc2_:b2Body = b2internal::#!S.GetBody();
         this.§3!I§(b2internal::9y,b2internal::2!G.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::#!S.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §3!I§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
