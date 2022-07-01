package §23§
{
   import §!§.b2Manifold;
   import §'!_§.b2Settings;
   import §'!_§.b2internal;
   import §0"!§.b2Body;
   import §0"!§.b2Fixture;
   import §=!!§.b2EdgeShape;
   import §=!!§.b2PolygonShape;
   import §=!!§.b2Shape;
   import §@!E§.b2Transform;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function §'!D§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §7!d§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §[!2§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§[!2§(param1,param2);
         b2Settings.b2Assert(param1.§4!v§() == b2Shape.§3!;§);
         b2Settings.b2Assert(param2.§4!v§() == b2Shape.§ 8§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::2!k.GetBody();
         var _loc2_:b2Body = b2internal::4!l.GetBody();
         this.§&+§(b2internal::=!u,b2internal::2!k.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::4!l.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §&+§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
