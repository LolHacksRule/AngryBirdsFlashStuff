package §0# §
{
   import §0J§.b2Manifold;
   import §8#t§.b2Body;
   import §8#t§.b2Fixture;
   import §[!3§.b2Settings;
   import §[!3§.b2internal;
   import §]!o§.b2EdgeShape;
   import §]!o§.b2PolygonShape;
   import §]!o§.b2Shape;
   import §`# §.b2Transform;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function §9b§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §-!2§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §9#t§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§9#t§(param1,param2);
         b2Settings.b2Assert(param1.§52§() == b2Shape.§]#6§);
         b2Settings.b2Assert(param2.§52§() == b2Shape.§+v§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::7";.GetBody();
         var _loc2_:b2Body = b2internal::4"J.GetBody();
         this.§^!h§(b2internal::0!T,b2internal::7";.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::4"J.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §^!h§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
