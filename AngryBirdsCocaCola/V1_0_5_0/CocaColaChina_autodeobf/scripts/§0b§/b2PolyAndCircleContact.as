package §0b§
{
   import § y§.b2Body;
   import § y§.b2Fixture;
   import §!u§.b2Collision;
   import §54§.b2Settings;
   import §54§.b2internal;
   import §]!7§.b2CircleShape;
   import §]!7§.b2PolygonShape;
   import §]!7§.b2Shape;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function §`Q§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §5!,§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §+!K§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§+!K§(param1,param2);
         b2Settings.b2Assert(param1.§`!Q§() == b2Shape.§3!D§);
         b2Settings.b2Assert(param2.§`!Q§() == b2Shape.§8m§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::31.m_body;
         var _loc2_:b2Body = b2internal::`>.m_body;
         b2Collision.§9!'§(b2internal::=!c,b2internal::31.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::`>.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
