package §<l§
{
   import §-!<§.b2PolygonShape;
   import §3f§.b2Body;
   import §3f§.b2Fixture;
   import §7!C§.b2internal;
   import §=!!§.b2Collision;
   
   use namespace b2internal;
   
   public class b2PolygonContact extends b2Contact
   {
       
      
      public function b2PolygonContact()
      {
         super();
      }
      
      public static function §?T§(param1:*) : b2Contact
      {
         return new b2PolygonContact();
      }
      
      public static function §>h§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §0c§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§0c§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::^v.GetBody();
         var _loc2_:b2Body = b2internal::>!D.GetBody();
         b2Collision.§8E§(b2internal::;y,b2internal::^v.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::>!D.GetShape() as b2PolygonShape,_loc2_.m_xf);
      }
   }
}
