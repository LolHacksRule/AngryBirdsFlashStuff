package §8Y§
{
   import §&U§.b2CircleShape;
   import §2!F§.b2internal;
   import §9"§.b2Collision;
   import §`j§.b2Body;
   import §`j§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2CircleContact extends b2Contact
   {
       
      
      public function b2CircleContact()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §>y§(param1:*) : b2Contact
      {
         return new b2CircleContact();
      }
      
      public static function §;@§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §8j§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super.§8j§(param1,param2);
         }
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:b2Body = b2internal::1!,.GetBody();
         var _loc2_:b2Body = b2internal::7+.GetBody();
         if(!_loc4_)
         {
            b2Collision.§-!%§(b2internal::&C,b2internal::1!,.GetShape() as b2CircleShape,_loc1_.m_xf,b2internal::7+.GetShape() as b2CircleShape,_loc2_.m_xf);
         }
      }
   }
}
