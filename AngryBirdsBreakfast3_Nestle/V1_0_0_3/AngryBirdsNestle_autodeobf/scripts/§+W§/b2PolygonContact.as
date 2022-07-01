package §+W§
{
   import § !%§.b2internal;
   import §6f§.b2Collision;
   import §;'§.b2Body;
   import §;'§.b2Fixture;
   import §?m§.b2PolygonShape;
   
   use namespace b2internal;
   
   public class b2PolygonContact extends b2Contact
   {
       
      
      public function b2PolygonContact()
      {
         super();
      }
      
      public static function §-",§(param1:*) : b2Contact
      {
         return new b2PolygonContact();
      }
      
      public static function §'!h§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §,E§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§,E§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::+"'.GetBody();
         var _loc2_:b2Body = b2internal::;!Z.GetBody();
         b2Collision.§^!i§(b2internal::8!;,b2internal::+"'.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::;!Z.GetShape() as b2PolygonShape,_loc2_.m_xf);
      }
   }
}
