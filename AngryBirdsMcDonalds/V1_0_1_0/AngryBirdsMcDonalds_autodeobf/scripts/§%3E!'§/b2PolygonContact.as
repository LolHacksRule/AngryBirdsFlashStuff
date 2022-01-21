package §>!'§
{
   import §1B§.b2Body;
   import §1B§.b2Fixture;
   import §9i§.b2internal;
   import §]7§.b2Collision;
   import §]q§.b2PolygonShape;
   
   use namespace b2internal;
   
   public class b2PolygonContact extends b2Contact
   {
       
      
      public function b2PolygonContact()
      {
         super();
      }
      
      public static function § %§(param1:*) : b2Contact
      {
         return new b2PolygonContact();
      }
      
      public static function §%_§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §<! §(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§<! §(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::7c.GetBody();
         var _loc2_:b2Body = b2internal::!!@.GetBody();
         b2Collision.§@!!§(b2internal::?!N,b2internal::7c.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::!!@.GetShape() as b2PolygonShape,_loc2_.m_xf);
      }
   }
}
