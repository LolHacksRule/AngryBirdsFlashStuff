package §6!9§
{
   import §#!"§.b2PolygonShape;
   import §'s§.b2Collision;
   import §+!,§.b2internal;
   import §]=§.b2Body;
   import §]=§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2PolygonContact extends b2Contact
   {
       
      
      public function b2PolygonContact()
      {
         super();
      }
      
      public static function §]!U§(param1:*) : b2Contact
      {
         return new b2PolygonContact();
      }
      
      public static function §"P§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §@!D§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§@!D§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = §41§.GetBody();
         var _loc2_:b2Body = §[0§.GetBody();
         b2Collision.§]Y§(§^O§,§41§.GetShape() as b2PolygonShape,_loc1_.m_xf,§[0§.GetShape() as b2PolygonShape,_loc2_.m_xf);
      }
   }
}
