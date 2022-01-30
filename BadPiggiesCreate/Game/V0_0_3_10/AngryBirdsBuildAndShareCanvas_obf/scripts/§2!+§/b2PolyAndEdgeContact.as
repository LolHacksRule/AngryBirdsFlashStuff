package §2!+§
{
   import §!S§.b2Settings;
   import §!S§.b2internal;
   import §1!1§.b2Manifold;
   import §6U§.b2EdgeShape;
   import §6U§.b2PolygonShape;
   import §6U§.b2Shape;
   import §?!h§.b2Transform;
   import §`]§.b2Body;
   import §`]§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function §6t§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §=!!§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §+Q§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§+Q§(param1,param2);
         b2Settings.b2Assert(param1.§8!d§() == b2Shape.§`"6§);
         b2Settings.b2Assert(param2.§8!d§() == b2Shape.§?!M§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::"!1.GetBody();
         var _loc2_:b2Body = b2internal::5!K.GetBody();
         this.§9!s§(b2internal::^!?,b2internal::"!1.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::5!K.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §9!s§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
