package §`!k§
{
   import § "%§.b2Transform;
   import §"#i§.b2EdgeShape;
   import §"#i§.b2PolygonShape;
   import §"#i§.b2Shape;
   import §'"$§.b2Manifold;
   import §,!s§.b2Settings;
   import §,!s§.b2internal;
   import §4"O§.b2Body;
   import §4"O§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function §4"T§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §`"e§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §1!M§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§1!M§(param1,param2);
         b2Settings.b2Assert(param1.§+L§() == b2Shape.§9##§);
         b2Settings.b2Assert(param2.§+L§() == b2Shape.§-#a§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::##y.GetBody();
         var _loc2_:b2Body = b2internal::0!m.GetBody();
         this.§2"$§(b2internal::1"j,b2internal::##y.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::0!m.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §2"$§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
