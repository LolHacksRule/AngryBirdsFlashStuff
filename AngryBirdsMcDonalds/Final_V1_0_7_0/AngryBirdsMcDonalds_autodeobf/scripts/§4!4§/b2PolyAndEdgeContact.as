package §4!4§
{
   import §&!P§.b2Manifold;
   import §+!o§.b2EdgeShape;
   import §+!o§.b2PolygonShape;
   import §+!o§.b2Shape;
   import §-0§.b2Body;
   import §-0§.b2Fixture;
   import §@g§.b2Settings;
   import §@g§.b2internal;
   import §^!%§.b2Transform;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function §6j§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function § B§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §<L§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§<L§(param1,param2);
         b2Settings.b2Assert(param1.§use§() == b2Shape.§@P§);
         b2Settings.b2Assert(param2.§use§() == b2Shape.§@!n§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::0!b.GetBody();
         var _loc2_:b2Body = b2internal::&a.GetBody();
         this.§7!0§(b2internal::5R,b2internal::0!b.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::&a.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §7!0§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
