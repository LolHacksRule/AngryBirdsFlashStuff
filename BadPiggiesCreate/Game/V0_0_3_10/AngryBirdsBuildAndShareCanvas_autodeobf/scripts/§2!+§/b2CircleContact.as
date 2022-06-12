package §2!+§
{
   import §!S§.b2internal;
   import §1!1§.b2Collision;
   import §6U§.b2CircleShape;
   import §`]§.b2Body;
   import §`]§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2CircleContact extends b2Contact
   {
       
      
      public function b2CircleContact()
      {
         super();
      }
      
      public static function §6t§(param1:*) : b2Contact
      {
         return new b2CircleContact();
      }
      
      public static function §=!!§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §+Q§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§+Q§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::"!1.GetBody();
         var _loc2_:b2Body = b2internal::5!K.GetBody();
         b2Collision.§!!;§(b2internal::^!?,b2internal::"!1.GetShape() as b2CircleShape,_loc1_.m_xf,b2internal::5!K.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
