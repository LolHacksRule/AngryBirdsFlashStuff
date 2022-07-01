package §'!^§
{
   import §!!o§.b2Collision;
   import §!r§.b2Settings;
   import §!r§.b2internal;
   import §0!j§.b2Body;
   import §0!j§.b2Fixture;
   import §8!K§.b2CircleShape;
   import §8!K§.b2PolygonShape;
   import §8!K§.b2Shape;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function §6!#§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §,b§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §;§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§;§(param1,param2);
         b2Settings.b2Assert(param1.§6`§() == b2Shape.§3!f§);
         b2Settings.b2Assert(param2.§6`§() == b2Shape.§>!D§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::5"4.m_body;
         var _loc2_:b2Body = b2internal::4!F.m_body;
         b2Collision.§+!g§(b2internal::]%,b2internal::5"4.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::4!F.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
