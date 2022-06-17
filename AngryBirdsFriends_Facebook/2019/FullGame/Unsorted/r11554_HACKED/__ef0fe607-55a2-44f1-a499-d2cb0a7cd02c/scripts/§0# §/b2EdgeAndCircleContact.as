package §0# §
{
   import §0J§.b2Manifold;
   import §8#t§.b2Body;
   import §8#t§.b2Fixture;
   import §[!3§.b2internal;
   import §]!o§.b2CircleShape;
   import §]!o§.b2EdgeShape;
   import §`# §.b2Transform;
   
   use namespace b2internal;
   
   public class b2EdgeAndCircleContact extends b2Contact
   {
       
      
      public function b2EdgeAndCircleContact()
      {
         super();
      }
      
      public static function §9b§(param1:*) : b2Contact
      {
         return new b2EdgeAndCircleContact();
      }
      
      public static function §-!2§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §9#t§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§9#t§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::7";.GetBody();
         var _loc2_:b2Body = b2internal::4"J.GetBody();
         this.§;$C§(b2internal::0!T,b2internal::7";.GetShape() as b2EdgeShape,_loc1_.m_xf,b2internal::4"J.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
      
      private function §;$C§(param1:b2Manifold, param2:b2EdgeShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
      }
   }
}
