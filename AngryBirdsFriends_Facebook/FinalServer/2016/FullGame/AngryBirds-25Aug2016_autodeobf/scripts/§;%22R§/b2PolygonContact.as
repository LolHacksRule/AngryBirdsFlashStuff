package §;"R§
{
   import §0H§.b2internal;
   import §3"q§.b2Collision;
   import §=#n§.b2Body;
   import §=#n§.b2Fixture;
   import §?!c§.b2PolygonShape;
   
   use namespace b2internal;
   
   public class b2PolygonContact extends b2Contact
   {
       
      
      public function b2PolygonContact()
      {
         super();
      }
      
      public static function §'#h§(param1:*) : b2Contact
      {
         return new b2PolygonContact();
      }
      
      public static function §@!]§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §<#W§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§<#W§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::!!u.GetBody();
         var _loc2_:b2Body = b2internal::?!A.GetBody();
         b2Collision.§<#C§(b2internal::&#V,b2internal::!!u.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::?!A.GetShape() as b2PolygonShape,_loc2_.m_xf);
      }
   }
}
