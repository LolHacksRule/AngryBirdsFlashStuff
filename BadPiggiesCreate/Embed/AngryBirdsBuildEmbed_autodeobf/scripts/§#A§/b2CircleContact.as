package §#A§
{
   import § !t§.b2Body;
   import § !t§.b2Fixture;
   import §#b§.b2CircleShape;
   import §'!;§.b2Collision;
   import §?s§.b2internal;
   
   use namespace b2internal;
   
   public class b2CircleContact extends b2Contact
   {
       
      
      public function b2CircleContact()
      {
         super();
      }
      
      public static function §?J§(param1:*) : b2Contact
      {
         return new b2CircleContact();
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
         b2Collision.§`>§(b2internal::@%,b2internal::4b.GetShape() as b2CircleShape,_loc1_.m_xf,b2internal::"'.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
