package §'!^§
{
   import §"!w§.b2EdgeShape;
   import §"!w§.b2PolygonShape;
   import §"!w§.b2Shape;
   import §8K§.b2Settings;
   import §8K§.b2internal;
   import §;`§.b2Body;
   import §;`§.b2Fixture;
   import §>!m§.b2Manifold;
   import §[!f§.b2Transform;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function §&!L§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §<!p§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §;c§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§;c§(param1,param2);
         b2Settings.b2Assert(param1.§^![§() == b2Shape.§7!D§);
         b2Settings.b2Assert(param2.§^![§() == b2Shape.§]!1§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::@!y.GetBody();
         var _loc2_:b2Body = b2internal::0!O.GetBody();
         this.§6"9§(b2internal::@I,b2internal::@!y.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::0!O.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §6"9§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
