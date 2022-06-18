package §6"0§
{
   import §,!T§.b2EdgeShape;
   import §,!T§.b2PolygonShape;
   import §,!T§.b2Shape;
   import §1#F§.b2Settings;
   import §1#F§.b2internal;
   import §3#h§.b2Body;
   import §3#h§.b2Fixture;
   import §6!R§.b2Transform;
   import §9$A§.b2Manifold;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function §'#q§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §0"y§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §14§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§14§(param1,param2);
         b2Settings.b2Assert(param1.§!"k§() == b2Shape.§!"Q§);
         b2Settings.b2Assert(param2.§!"k§() == b2Shape.§ #W§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::#";.GetBody();
         var _loc2_:b2Body = b2internal::0#0.GetBody();
         this.§-$@§(b2internal::[!2,b2internal::#";.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::0#0.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §-$@§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
