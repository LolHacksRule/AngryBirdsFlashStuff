package §%E§
{
   import §+d§.b2Body;
   import §+d§.b2Fixture;
   import §6%§.b2Settings;
   import §6%§.b2internal;
   import §8`§.b2EdgeShape;
   import §8`§.b2PolygonShape;
   import §8`§.b2Shape;
   import §=n§.b2Manifold;
   import §`!^§.b2Transform;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function §2!f§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §9!1§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §"!K§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§"!K§(param1,param2);
         b2Settings.b2Assert(param1.§,!d§() == b2Shape.§0B§);
         b2Settings.b2Assert(param2.§,!d§() == b2Shape.§<!g§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::[!d.GetBody();
         var _loc2_:b2Body = b2internal::#!^.GetBody();
         this.§=!'§(b2internal::>!b,b2internal::[!d.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::#!^.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §=!'§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
