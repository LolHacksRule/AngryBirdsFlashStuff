package §6"0§
{
   import §,!T§.b2PolygonShape;
   import §1#F§.b2internal;
   import §3#h§.b2Body;
   import §3#h§.b2Fixture;
   import §9$A§.b2Collision;
   
   use namespace b2internal;
   
   public class b2PolygonContact extends b2Contact
   {
       
      
      public function b2PolygonContact()
      {
         super();
      }
      
      public static function §'#q§(param1:*) : b2Contact
      {
         return new b2PolygonContact();
      }
      
      public static function §0"y§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §14§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§14§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::#";.GetBody();
         var _loc2_:b2Body = b2internal::0#0.GetBody();
         b2Collision.§6z§(b2internal::[!2,b2internal::#";.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::0#0.GetShape() as b2PolygonShape,_loc2_.m_xf);
      }
   }
}
