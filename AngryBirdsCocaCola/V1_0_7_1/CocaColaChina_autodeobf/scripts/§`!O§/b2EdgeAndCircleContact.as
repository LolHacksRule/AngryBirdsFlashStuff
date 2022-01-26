package §`!O§
{
   import § Y§.b2Manifold;
   import §#!M§.b2internal;
   import §4U§.b2Body;
   import §4U§.b2Fixture;
   import §<!8§.b2Transform;
   import §>![§.b2CircleShape;
   import §>![§.b2EdgeShape;
   
   use namespace b2internal;
   
   public class b2EdgeAndCircleContact extends b2Contact
   {
       
      
      public function b2EdgeAndCircleContact()
      {
         super();
      }
      
      public static function §&!W§(param1:*) : b2Contact
      {
         return new b2EdgeAndCircleContact();
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
         this.§>h§(b2internal::^v,b2internal::'c.GetShape() as b2EdgeShape,_loc1_.m_xf,b2internal::"!^.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
      
      private function §>h§(param1:b2Manifold, param2:b2EdgeShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
      }
   }
}
