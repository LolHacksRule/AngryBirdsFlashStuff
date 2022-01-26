package §'z§
{
   import §"v§.b2internal;
   import §&i§.b2Body;
   import §&i§.b2Fixture;
   import §5!K§.b2Transform;
   import §]M§.b2Manifold;
   import §each §.b2CircleShape;
   import §each §.b2EdgeShape;
   
   use namespace b2internal;
   
   public class b2EdgeAndCircleContact extends b2Contact
   {
       
      
      public function b2EdgeAndCircleContact()
      {
         super();
      }
      
      public static function §#![§(param1:*) : b2Contact
      {
         return new b2EdgeAndCircleContact();
      }
      
      public static function §%P§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §"L§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§"L§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::&L.GetBody();
         var _loc2_:b2Body = b2internal::8! .GetBody();
         this.§9!E§(b2internal::8b,b2internal::&L.GetShape() as b2EdgeShape,_loc1_.m_xf,b2internal::8! .GetShape() as b2CircleShape,_loc2_.m_xf);
      }
      
      private function §9!E§(param1:b2Manifold, param2:b2EdgeShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
      }
   }
}
