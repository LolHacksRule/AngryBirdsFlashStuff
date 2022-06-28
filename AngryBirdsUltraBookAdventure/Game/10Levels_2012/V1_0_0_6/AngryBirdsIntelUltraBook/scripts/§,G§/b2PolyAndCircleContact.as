package §,G§
{
   import §#V§.b2Body;
   import §#V§.b2Fixture;
   import §,C§.b2CircleShape;
   import §,C§.b2PolygonShape;
   import §,C§.b2Shape;
   import §3!m§.b2Settings;
   import §3!m§.b2internal;
   import §8w§.b2Collision;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function §1#§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §,!W§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §@!b§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§@!b§(param1,param2);
         b2Settings.b2Assert(param1.§'!_§() == b2Shape.§+!N§);
         b2Settings.b2Assert(param2.§'!_§() == b2Shape.§1"§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::3t.m_body;
         var _loc2_:b2Body = b2internal::[i.m_body;
         b2Collision.§<v§(b2internal::2?,b2internal::3t.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::[i.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
