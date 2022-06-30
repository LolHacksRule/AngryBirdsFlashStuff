package §=_§
{
   import § !_§.b2Transform;
   import §+&§.b2Settings;
   import §+&§.b2internal;
   import §-!!§.b2EdgeShape;
   import §-!!§.b2PolygonShape;
   import §-!!§.b2Shape;
   import §^!Z§.b2Body;
   import §^!Z§.b2Fixture;
   import §^t§.b2Manifold;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function §8b§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §<a§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §=s§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§=s§(param1,param2);
         b2Settings.b2Assert(param1.§6+§() == b2Shape.§>H§);
         b2Settings.b2Assert(param2.§6+§() == b2Shape.§>"§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::"!V.GetBody();
         var _loc2_:b2Body = b2internal::[!.GetBody();
         this.§<!L§(b2internal::%`,b2internal::"!V.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::[!.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §<!L§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
