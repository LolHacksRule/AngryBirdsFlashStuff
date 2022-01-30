package §'!^§
{
   import §!!o§.b2Manifold;
   import §!r§.b2internal;
   import §-!2§.b2Transform;
   import §0!j§.b2Body;
   import §0!j§.b2Fixture;
   import §8!K§.b2CircleShape;
   import §8!K§.b2EdgeShape;
   
   use namespace b2internal;
   
   public class b2EdgeAndCircleContact extends b2Contact
   {
       
      
      public function b2EdgeAndCircleContact()
      {
         super();
      }
      
      public static function §6!#§(param1:*) : b2Contact
      {
         return new b2EdgeAndCircleContact();
      }
      
      public static function §,b§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §;§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§;§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::5"4.GetBody();
         var _loc2_:b2Body = b2internal::4!F.GetBody();
         this.§&!!§(b2internal::]%,b2internal::5"4.GetShape() as b2EdgeShape,_loc1_.m_xf,b2internal::4!F.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
      
      private function §&!!§(param1:b2Manifold, param2:b2EdgeShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
      }
   }
}
