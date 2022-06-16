package §4!2§
{
   import § !0§.b2Manifold;
   import §&!Y§.b2Body;
   import §&!Y§.b2Fixture;
   import §+!d§.b2EdgeShape;
   import §+!d§.b2PolygonShape;
   import §+!d§.b2Shape;
   import §7F§.b2Transform;
   import §@!a§.b2Settings;
   import §@!a§.b2internal;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function §]!e§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §]!f§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §["=§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§["=§(param1,param2);
         b2Settings.b2Assert(param1.§;!w§() == b2Shape.§-c§);
         b2Settings.b2Assert(param2.§;!w§() == b2Shape.§^"'§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::9!E.GetBody();
         var _loc2_:b2Body = b2internal::5m.GetBody();
         this.§7!>§(b2internal::'R,b2internal::9!E.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::5m.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §7!>§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
