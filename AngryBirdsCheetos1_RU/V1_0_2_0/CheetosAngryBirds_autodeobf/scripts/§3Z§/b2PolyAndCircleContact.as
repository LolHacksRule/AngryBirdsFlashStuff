package §3Z§
{
   import § y§.b2CircleShape;
   import § y§.b2PolygonShape;
   import § y§.b2Shape;
   import §4!&§.b2Body;
   import §4!&§.b2Fixture;
   import §8!%§.b2Settings;
   import §8!%§.b2internal;
   import §<!^§.b2Collision;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function §?j§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §4c§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §]!S§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§]!S§(param1,param2);
         b2Settings.b2Assert(param1.§?!S§() == b2Shape.§7F§);
         b2Settings.b2Assert(param2.§?!S§() == b2Shape.§5! §);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::>^.m_body;
         var _loc2_:b2Body = b2internal::;!Z.m_body;
         b2Collision.§]S§(b2internal::2!=,b2internal::>^.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::;!Z.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
