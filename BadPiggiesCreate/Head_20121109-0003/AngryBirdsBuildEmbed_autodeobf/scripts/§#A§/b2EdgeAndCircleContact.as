package §#A§
{
   import § !t§.b2Body;
   import § !t§.b2Fixture;
   import §#b§.b2CircleShape;
   import §#b§.b2EdgeShape;
   import §'!;§.b2Manifold;
   import §<!B§.b2Transform;
   import §?s§.b2internal;
   
   use namespace b2internal;
   
   public class b2EdgeAndCircleContact extends b2Contact
   {
       
      
      public function b2EdgeAndCircleContact()
      {
         super();
      }
      
      public static function §?J§(param1:*) : b2Contact
      {
         return new b2EdgeAndCircleContact();
      }
      
      public static function §;!#§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §^!]§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§^!]§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::4b.GetBody();
         var _loc2_:b2Body = b2internal::"'.GetBody();
         this.§2!Y§(b2internal::@%,b2internal::4b.GetShape() as b2EdgeShape,_loc1_.m_xf,b2internal::"'.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
      
      private function §2!Y§(param1:b2Manifold, param2:b2EdgeShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
      }
   }
}
