package §`!O§
{
   import § Y§.b2Collision;
   import §#!M§.b2Settings;
   import §#!M§.b2internal;
   import §4U§.b2Body;
   import §4U§.b2Fixture;
   import §>![§.b2CircleShape;
   import §>![§.b2PolygonShape;
   import §>![§.b2Shape;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function §&!W§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §'D§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §&4§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§&4§(param1,param2);
         b2Settings.b2Assert(param1.§6`§() == b2Shape.§6!2§);
         b2Settings.b2Assert(param2.§6`§() == b2Shape.§4!c§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::'c.m_body;
         var _loc2_:b2Body = b2internal::"!^.m_body;
         b2Collision.§<!b§(b2internal::^v,b2internal::'c.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::"!^.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
