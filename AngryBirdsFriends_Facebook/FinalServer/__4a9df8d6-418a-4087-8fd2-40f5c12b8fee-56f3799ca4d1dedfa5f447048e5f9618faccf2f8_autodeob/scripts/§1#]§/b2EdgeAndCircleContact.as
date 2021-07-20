package §1#]§
{
   import §!H§.b2CircleShape;
   import §!H§.b2EdgeShape;
   import §4$E§.b2Manifold;
   import §?!C§.b2Transform;
   import §?N§.b2internal;
   import §@!S§.b2Body;
   import §@!S§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2EdgeAndCircleContact extends b2Contact
   {
       
      
      public function b2EdgeAndCircleContact()
      {
         super();
      }
      
      public static function §,"h§(param1:*) : b2Contact
      {
         return new b2EdgeAndCircleContact();
      }
      
      public static function §;"@§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §!!C§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§!!C§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::-!-.GetBody();
         var _loc2_:b2Body = b2internal::^y.GetBody();
         this.§0![§(b2internal::^#t,b2internal::-!-.GetShape() as b2EdgeShape,_loc1_.m_xf,b2internal::^y.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
      
      private function §0![§(param1:b2Manifold, param2:b2EdgeShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
      }
   }
}
