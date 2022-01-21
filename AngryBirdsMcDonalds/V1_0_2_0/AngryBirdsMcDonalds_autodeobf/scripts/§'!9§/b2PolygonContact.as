package §'!9§
{
   import §,7§.b2PolygonShape;
   import §3!g§.b2Body;
   import §3!g§.b2Fixture;
   import §<!!§.b2Collision;
   import §=!X§.b2internal;
   
   use namespace b2internal;
   
   public class b2PolygonContact extends b2Contact
   {
       
      
      public function b2PolygonContact()
      {
         super();
      }
      
      public static function § 9§(param1:*) : b2Contact
      {
         return new b2PolygonContact();
      }
      
      public static function §+$§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §4`§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§4`§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::2!G.GetBody();
         var _loc2_:b2Body = b2internal::#!S.GetBody();
         b2Collision.§%7§(b2internal::9y,b2internal::2!G.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::#!S.GetShape() as b2PolygonShape,_loc2_.m_xf);
      }
   }
}
