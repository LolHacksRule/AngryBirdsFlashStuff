package §-"&§
{
   import §"y§.b2CircleShape;
   import §"y§.b2PolygonShape;
   import §"y§.b2Shape;
   import §'F§.b2Settings;
   import §'F§.b2internal;
   import §3!`§.b2Body;
   import §3!`§.b2Fixture;
   import §^9§.b2Collision;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function §2#§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §5f§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §?!r§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§?!r§(param1,param2);
         b2Settings.b2Assert(param1.§<!A§() == b2Shape.§2e§);
         b2Settings.b2Assert(param2.§<!A§() == b2Shape.§9_§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::]R.m_body;
         var _loc2_:b2Body = b2internal::7!&.m_body;
         b2Collision.§@8§(b2internal::=!P,b2internal::]R.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::7!&.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
