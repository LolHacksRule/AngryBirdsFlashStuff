package §=_§
{
   import §+&§.b2internal;
   import §-!!§.b2PolygonShape;
   import §^!Z§.b2Body;
   import §^!Z§.b2Fixture;
   import §^t§.b2Collision;
   
   use namespace b2internal;
   
   public class b2PolygonContact extends b2Contact
   {
       
      
      public function b2PolygonContact()
      {
         super();
      }
      
      public static function §8b§(param1:*) : b2Contact
      {
         return new b2PolygonContact();
      }
      
      public static function §<a§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §=s§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§=s§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::"!V.GetBody();
         var _loc2_:b2Body = b2internal::[!.GetBody();
         b2Collision.§9!e§(b2internal::%`,b2internal::"!V.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::[!.GetShape() as b2PolygonShape,_loc2_.m_xf);
      }
   }
}
