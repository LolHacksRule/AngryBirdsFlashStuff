package §'!9§
{
   import §,7§.b2CircleShape;
   import §,7§.b2PolygonShape;
   import §,7§.b2Shape;
   import §3!g§.b2Body;
   import §3!g§.b2Fixture;
   import §<!!§.b2Collision;
   import §=!X§.b2Settings;
   import §=!X§.b2internal;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function § 9§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §+$§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §4`§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§4`§(param1,param2);
         b2Settings.b2Assert(param1.§^!A§() == b2Shape.§0!7§);
         b2Settings.b2Assert(param2.§^!A§() == b2Shape.§%b§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::2!G.m_body;
         var _loc2_:b2Body = b2internal::#!S.m_body;
         b2Collision.§[e§(b2internal::9y,b2internal::2!G.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::#!S.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
