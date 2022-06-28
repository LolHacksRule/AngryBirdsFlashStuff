package §break§
{
   import §2!+§.b2PolygonShape;
   import §7!u§.b2internal;
   import §72§.b2Collision;
   import §`w§.b2Body;
   import §`w§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2PolygonContact extends b2Contact
   {
       
      
      public function b2PolygonContact()
      {
         super();
      }
      
      public static function §`4§(param1:*) : b2Contact
      {
         return new b2PolygonContact();
      }
      
      public static function §[M§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §<!e§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§<!e§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::50.GetBody();
         var _loc2_:b2Body = b2internal::'z.GetBody();
         b2Collision.§%!8§(b2internal::"!m,b2internal::50.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::'z.GetShape() as b2PolygonShape,_loc2_.m_xf);
      }
   }
}
