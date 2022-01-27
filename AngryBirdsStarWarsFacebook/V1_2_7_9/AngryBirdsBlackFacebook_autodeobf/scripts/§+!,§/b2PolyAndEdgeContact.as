package §+!,§
{
   import §%!#§.b2Manifold;
   import §1x§.b2Body;
   import §1x§.b2Fixture;
   import §9!s§.b2Settings;
   import §9!s§.b2internal;
   import §[!L§.b2EdgeShape;
   import §[!L§.b2PolygonShape;
   import §[!L§.b2Shape;
   import §^>§.b2Transform;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function §0"]§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §%c§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §1"x§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§1"x§(param1,param2);
         b2Settings.b2Assert(param1.§ "N§() == b2Shape.§2!c§);
         b2Settings.b2Assert(param2.§ "N§() == b2Shape.§>"Z§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::0">.GetBody();
         var _loc2_:b2Body = b2internal::'#'.GetBody();
         this.§0"#§(b2internal::&"',b2internal::0">.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::'#'.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §0"#§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
