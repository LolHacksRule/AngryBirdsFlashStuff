package §]!l§
{
   import § !k§.b2Body;
   import § !k§.b2Fixture;
   import §!"8§.b2Transform;
   import §&I§.b2EdgeShape;
   import §&I§.b2PolygonShape;
   import §&I§.b2Shape;
   import §6!d§.b2Manifold;
   import §in§.b2Settings;
   import §in§.b2internal;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function §#!b§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §1?§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §`!r§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§`!r§(param1,param2);
         b2Settings.b2Assert(param1.§9!j§() == b2Shape.§?! §);
         b2Settings.b2Assert(param2.§9!j§() == b2Shape.§0_§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::'!u.GetBody();
         var _loc2_:b2Body = b2internal:: !X.GetBody();
         this.§6!z§(b2internal::"t,b2internal::'!u.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal:: !X.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §6!z§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
