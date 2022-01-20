package §6!g§
{
   import §,!V§.b2Collision;
   import §8T§.b2Body;
   import §8T§.b2Fixture;
   import §<!D§.b2PolygonShape;
   import §?!n§.b2internal;
   
   use namespace b2internal;
   
   public class b2PolygonContact extends b2Contact
   {
       
      
      public function b2PolygonContact()
      {
         super();
      }
      
      public static function §[u§(param1:*) : b2Contact
      {
         return new b2PolygonContact();
      }
      
      public static function §60§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §2!R§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§2!R§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::3!K.GetBody();
         var _loc2_:b2Body = b2internal::!!b.GetBody();
         b2Collision.§?y§(b2internal::&!9,b2internal::3!K.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::!!b.GetShape() as b2PolygonShape,_loc2_.m_xf);
      }
   }
}
