package §'!^§
{
   import §!!o§.b2Manifold;
   import §!r§.b2Settings;
   import §!r§.b2internal;
   import §-!2§.b2Transform;
   import §0!j§.b2Body;
   import §0!j§.b2Fixture;
   import §8!K§.b2EdgeShape;
   import §8!K§.b2PolygonShape;
   import §8!K§.b2Shape;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function §6!#§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §,b§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §;§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§;§(param1,param2);
         b2Settings.b2Assert(param1.§6`§() == b2Shape.§3!f§);
         b2Settings.b2Assert(param2.§6`§() == b2Shape.§!!>§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::5"4.GetBody();
         var _loc2_:b2Body = b2internal::4!F.GetBody();
         this.§#w§(b2internal::]%,b2internal::5"4.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::4!F.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §#w§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
