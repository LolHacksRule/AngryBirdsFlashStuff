package §@!a§
{
   import §+!b§.b2EdgeShape;
   import §+!b§.b2PolygonShape;
   import §+!b§.b2Shape;
   import §4x§.b2Settings;
   import §4x§.b2internal;
   import §8!I§.b2Body;
   import §8!I§.b2Fixture;
   import §<"§.b2Manifold;
   import §=i§.b2Transform;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function § `§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §%!`§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §5!9§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§5!9§(param1,param2);
         b2Settings.b2Assert(param1.§<!M§() == b2Shape.§-§);
         b2Settings.b2Assert(param2.§<!M§() == b2Shape.§9^§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::]![.GetBody();
         var _loc2_:b2Body = b2internal::11.GetBody();
         this.§&!]§(b2internal::=!=,b2internal::]![.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::11.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §&!]§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
