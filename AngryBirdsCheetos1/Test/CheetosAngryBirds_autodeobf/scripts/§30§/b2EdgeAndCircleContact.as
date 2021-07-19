package §30§
{
   import § o§.b2Body;
   import § o§.b2Fixture;
   import §"0§.b2internal;
   import §-r§.b2Manifold;
   import §6!H§.b2Transform;
   import §]!S§.b2CircleShape;
   import §]!S§.b2EdgeShape;
   
   use namespace b2internal;
   
   public class b2EdgeAndCircleContact extends b2Contact
   {
       
      
      public function b2EdgeAndCircleContact()
      {
         super();
      }
      
      public static function §#!M§(param1:*) : b2Contact
      {
         return new b2EdgeAndCircleContact();
      }
      
      public static function §[!$§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §2'§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§2'§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::45.GetBody();
         var _loc2_:b2Body = b2internal::?G.GetBody();
         this.§]!§(b2internal::-0,b2internal::45.GetShape() as b2EdgeShape,_loc1_.m_xf,b2internal::?G.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
      
      private function §]!§(param1:b2Manifold, param2:b2EdgeShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
      }
   }
}
