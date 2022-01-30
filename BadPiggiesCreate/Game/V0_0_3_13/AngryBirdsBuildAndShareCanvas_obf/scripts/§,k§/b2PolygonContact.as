package §,k§
{
   import §-g§.b2Collision;
   import §5!]§.b2PolygonShape;
   import §7!q§.b2Body;
   import §7!q§.b2Fixture;
   import §[M§.b2internal;
   
   use namespace b2internal;
   
   public class b2PolygonContact extends b2Contact
   {
       
      
      public function b2PolygonContact()
      {
         super();
      }
      
      public static function §="1§(param1:*) : b2Contact
      {
         return new b2PolygonContact();
      }
      
      public static function §,"0§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §;!V§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§;!V§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::?a.GetBody();
         var _loc2_:b2Body = b2internal::;!S.GetBody();
         b2Collision.§#!k§(b2internal::28,b2internal::?a.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::;!S.GetShape() as b2PolygonShape,_loc2_.m_xf);
      }
   }
}
