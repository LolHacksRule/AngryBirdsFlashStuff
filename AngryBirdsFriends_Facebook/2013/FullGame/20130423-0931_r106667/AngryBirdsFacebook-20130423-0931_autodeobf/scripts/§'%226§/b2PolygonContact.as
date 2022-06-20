package §'"6§
{
   import §!"3§.b2PolygonShape;
   import §'"-§.b2Collision;
   import §,"[§.b2internal;
   import §6"1§.b2Body;
   import §6"1§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2PolygonContact extends b2Contact
   {
       
      
      public function b2PolygonContact()
      {
         super();
      }
      
      public static function §3!N§(param1:*) : b2Contact
      {
         return new b2PolygonContact();
      }
      
      public static function §2!s§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §<"U§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§<"U§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::4!?.GetBody();
         var _loc2_:b2Body = b2internal::3!B.GetBody();
         b2Collision.§<!s§(b2internal::<!+,b2internal::4!?.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::3!B.GetShape() as b2PolygonShape,_loc2_.m_xf);
      }
   }
}
