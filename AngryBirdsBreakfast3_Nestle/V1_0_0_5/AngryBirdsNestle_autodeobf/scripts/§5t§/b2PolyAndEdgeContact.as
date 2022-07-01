package §5t§
{
   import §!;§.b2Manifold;
   import §,v§.b2Body;
   import §,v§.b2Fixture;
   import §-!A§.b2Transform;
   import §3!4§.b2EdgeShape;
   import §3!4§.b2PolygonShape;
   import §3!4§.b2Shape;
   import §@h§.b2Settings;
   import §@h§.b2internal;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function §@Q§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §#!N§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §6m§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§6m§(param1,param2);
         b2Settings.b2Assert(param1.§@!D§() == b2Shape.§7p§);
         b2Settings.b2Assert(param2.§@!D§() == b2Shape.§#=§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::6!$.GetBody();
         var _loc2_:b2Body = b2internal::37.GetBody();
         this.§3s§(b2internal::^I,b2internal::6!$.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::37.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §3s§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
