package §;!e§
{
   import §"J§.b2Body;
   import §"J§.b2Fixture;
   import §%4§.b2Collision;
   import §2k§.b2CircleShape;
   import §<";§.b2internal;
   
   use namespace b2internal;
   
   public class b2CircleContact extends b2Contact
   {
       
      
      public function b2CircleContact()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §`!P§(param1:*) : b2Contact
      {
         return new b2CircleContact();
      }
      
      public static function §3!0§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §+N§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            super.§+N§(param1,param2);
         }
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:b2Body = b2internal::9!<.GetBody();
         var _loc2_:b2Body = b2internal::%,.GetBody();
         if(_loc4_)
         {
            b2Collision.§!!k§(b2internal:: !",b2internal::9!<.GetShape() as b2CircleShape,_loc1_.m_xf,b2internal::%,.GetShape() as b2CircleShape,_loc2_.m_xf);
         }
      }
   }
}
