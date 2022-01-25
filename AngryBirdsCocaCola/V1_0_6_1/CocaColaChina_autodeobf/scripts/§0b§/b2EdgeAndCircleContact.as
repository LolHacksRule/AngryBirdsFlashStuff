package §0b§
{
   import § y§.b2Body;
   import § y§.b2Fixture;
   import §!u§.b2Manifold;
   import §54§.b2internal;
   import §;h§.b2Transform;
   import §]!7§.b2CircleShape;
   import §]!7§.b2EdgeShape;
   
   use namespace b2internal;
   
   public class b2EdgeAndCircleContact extends b2Contact
   {
       
      
      public function b2EdgeAndCircleContact()
      {
         super();
      }
      
      public static function §`Q§(param1:*) : b2Contact
      {
         return new b2EdgeAndCircleContact();
      }
      
      public static function §5!,§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §+!K§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§+!K§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::31.GetBody();
         var _loc2_:b2Body = b2internal::`>.GetBody();
         this.§3O§(b2internal::=!c,b2internal::31.GetShape() as b2EdgeShape,_loc1_.m_xf,b2internal::`>.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
      
      private function §3O§(param1:b2Manifold, param2:b2EdgeShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
      }
   }
}
