package §`!O§
{
   import § Y§.b2Collision;
   import §#!M§.b2internal;
   import §4U§.b2Body;
   import §4U§.b2Fixture;
   import §>![§.b2CircleShape;
   
   use namespace b2internal;
   
   public class b2CircleContact extends b2Contact
   {
       
      
      public function b2CircleContact()
      {
         super();
      }
      
      public static function §&!W§(param1:*) : b2Contact
      {
         return new b2CircleContact();
      }
      
      public static function §'D§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §&4§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§&4§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::'c.GetBody();
         var _loc2_:b2Body = b2internal::"!^.GetBody();
         b2Collision.§8E§(b2internal::^v,b2internal::'c.GetShape() as b2CircleShape,_loc1_.m_xf,b2internal::"!^.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
