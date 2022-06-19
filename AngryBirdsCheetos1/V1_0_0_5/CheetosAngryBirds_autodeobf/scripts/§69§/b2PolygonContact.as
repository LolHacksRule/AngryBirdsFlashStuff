package §69§
{
   import §0!2§.b2Collision;
   import §1!H§.b2PolygonShape;
   import §;]§.b2internal;
   import §?!0§.b2Body;
   import §?!0§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2PolygonContact extends b2Contact
   {
       
      
      public function b2PolygonContact()
      {
         super();
      }
      
      public static function §?!@§(param1:*) : b2Contact
      {
         return new b2PolygonContact();
      }
      
      public static function §4!L§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §"o§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§"o§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::<D.GetBody();
         var _loc2_:b2Body = b2internal::+p.GetBody();
         b2Collision.§-s§(b2internal::'&,b2internal::<D.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::+p.GetShape() as b2PolygonShape,_loc2_.m_xf);
      }
   }
}
