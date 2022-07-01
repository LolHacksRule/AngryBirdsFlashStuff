package §`§
{
   import §&!n§.b2Manifold;
   import §2!Q§.b2EdgeShape;
   import §2!Q§.b2PolygonShape;
   import §2!Q§.b2Shape;
   import §8,§.b2Settings;
   import §8,§.b2internal;
   import §9v§.b2Transform;
   import §?!E§.b2Body;
   import §?!E§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function §-"$§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §@!,§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §8!<§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§8!<§(param1,param2);
         b2Settings.b2Assert(param1.§7![§() == b2Shape.§;!y§);
         b2Settings.b2Assert(param2.§7![§() == b2Shape.§+!w§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::+!u.GetBody();
         var _loc2_:b2Body = b2internal::6h.GetBody();
         this.§>m§(b2internal::7`,b2internal::+!u.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::6h.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §>m§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
