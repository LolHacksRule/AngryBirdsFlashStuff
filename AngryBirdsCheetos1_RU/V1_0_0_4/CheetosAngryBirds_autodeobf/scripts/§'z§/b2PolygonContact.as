package §'z§
{
   import §"v§.b2internal;
   import §&i§.b2Body;
   import §&i§.b2Fixture;
   import §]M§.b2Collision;
   import §each §.b2PolygonShape;
   
   use namespace b2internal;
   
   public class b2PolygonContact extends b2Contact
   {
       
      
      public function b2PolygonContact()
      {
         super();
      }
      
      public static function §#![§(param1:*) : b2Contact
      {
         return new b2PolygonContact();
      }
      
      public static function §%P§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §"L§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§"L§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::&L.GetBody();
         var _loc2_:b2Body = b2internal::8! .GetBody();
         b2Collision.§]!]§(b2internal::8b,b2internal::&L.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::8! .GetShape() as b2PolygonShape,_loc2_.m_xf);
      }
   }
}
