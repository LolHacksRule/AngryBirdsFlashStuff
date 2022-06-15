package §-#F§
{
   import §&$+§.b2Settings;
   import §&$+§.b2internal;
   import §'#K§.b2Body;
   import §'#K§.b2Fixture;
   import §,#E§.b2Manifold;
   import §04§.b2Transform;
   import §1#I§.b2EdgeShape;
   import §1#I§.b2PolygonShape;
   import §1#I§.b2Shape;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function §9#s§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §,#?§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §`"R§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§`"R§(param1,param2);
         b2Settings.b2Assert(param1.§<!e§() == b2Shape.§#!J§);
         b2Settings.b2Assert(param2.§<!e§() == b2Shape.§^$#§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::4"F.GetBody();
         var _loc2_:b2Body = b2internal::'"n.GetBody();
         this.§^#]§(b2internal::<"O,b2internal::4"F.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::'"n.GetShape() as b2EdgeShape,_loc2_.m_xf);
      }
      
      private function §^#]§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
