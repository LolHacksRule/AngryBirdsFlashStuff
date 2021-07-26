package §-#F§
{
   import §&$+§.b2Settings;
   import §&$+§.b2internal;
   import §'#K§.b2Body;
   import §'#K§.b2Fixture;
   import §,#E§.b2Collision;
   import §1#I§.b2CircleShape;
   import §1#I§.b2PolygonShape;
   import §1#I§.b2Shape;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function §9#s§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §,#?§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §`"R§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§`"R§(param1,param2);
         b2Settings.b2Assert(param1.§<!e§() == b2Shape.§#!J§);
         b2Settings.b2Assert(param2.§<!e§() == b2Shape.§7!#§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::4"F.m_body;
         var _loc2_:b2Body = b2internal::'"n.m_body;
         b2Collision.§&!k§(b2internal::<"O,b2internal::4"F.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::'"n.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
