package §,G§
{
   import §#V§.b2Body;
   import §#V§.b2Fixture;
   import §,C§.b2EdgeShape;
   import §,C§.b2PolygonShape;
   import §,C§.b2Shape;
   import §3!m§.b2Settings;
   import §3!m§.b2internal;
   import §8w§.b2Manifold;
   import §;%§.b2Transform;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function §1#§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §,!W§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §@!b§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§@!b§(param1,param2);
         b2Settings.b2Assert(param1.§'!_§() == b2Shape.§+!N§);
         b2Settings.b2Assert(param2.§'!_§() == b2Shape.§`!<§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::3t.GetBody();
         var _loc2_:b2Body = b2internal::[i.GetBody();
         this.§&_§(b2internal::2?,b2internal::3t.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::[i.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §&_§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
