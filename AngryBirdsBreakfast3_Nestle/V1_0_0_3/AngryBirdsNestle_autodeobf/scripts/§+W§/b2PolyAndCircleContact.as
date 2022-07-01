package §+W§
{
   import § !%§.b2Settings;
   import § !%§.b2internal;
   import §6f§.b2Collision;
   import §;'§.b2Body;
   import §;'§.b2Fixture;
   import §?m§.b2CircleShape;
   import §?m§.b2PolygonShape;
   import §?m§.b2Shape;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function §-",§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §'!h§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §,E§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§,E§(param1,param2);
         b2Settings.b2Assert(param1.§]"$§() == b2Shape.§!Y§);
         b2Settings.b2Assert(param2.§]"$§() == b2Shape.§;"4§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::+"'.m_body;
         var _loc2_:b2Body = b2internal::;!Z.m_body;
         b2Collision.§^!E§(b2internal::8!;,b2internal::+"'.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::;!Z.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
