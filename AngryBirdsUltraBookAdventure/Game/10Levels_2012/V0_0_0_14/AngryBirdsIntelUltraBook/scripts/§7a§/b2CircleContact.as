package §7a§
{
   import § D§.b2Body;
   import § D§.b2Fixture;
   import §&!-§.b2Collision;
   import §0!'§.b2CircleShape;
   import §;u§.b2internal;
   
   use namespace b2internal;
   
   public class b2CircleContact extends b2Contact
   {
       
      
      public function b2CircleContact()
      {
         super();
      }
      
      public static function §5=§(param1:*) : b2Contact
      {
         return new b2CircleContact();
      }
      
      public static function §"L§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §#[§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§#[§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::48.GetBody();
         var _loc2_:b2Body = b2internal::[=.GetBody();
         b2Collision.§!!y§(b2internal::?K,b2internal::48.GetShape() as b2CircleShape,_loc1_.m_xf,b2internal::[=.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
