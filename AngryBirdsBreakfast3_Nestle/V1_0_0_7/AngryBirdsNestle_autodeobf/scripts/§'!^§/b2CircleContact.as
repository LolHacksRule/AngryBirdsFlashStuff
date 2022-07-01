package §'!^§
{
   import §!!o§.b2Collision;
   import §!r§.b2internal;
   import §0!j§.b2Body;
   import §0!j§.b2Fixture;
   import §8!K§.b2CircleShape;
   
   use namespace b2internal;
   
   public class b2CircleContact extends b2Contact
   {
       
      
      public function b2CircleContact()
      {
         super();
      }
      
      public static function §6!#§(param1:*) : b2Contact
      {
         return new b2CircleContact();
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
         b2Collision.§,Q§(b2internal::]%,b2internal::5"4.GetShape() as b2CircleShape,_loc1_.m_xf,b2internal::4!F.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
