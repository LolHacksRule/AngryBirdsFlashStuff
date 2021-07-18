package §;!e§
{
   import §"J§.b2Body;
   import §"J§.b2Fixture;
   import §%4§.b2Collision;
   import §2k§.b2PolygonShape;
   import §<";§.b2internal;
   
   use namespace b2internal;
   
   public class b2PolygonContact extends b2Contact
   {
       
      
      public function b2PolygonContact()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      public static function §`!P§(param1:*) : b2Contact
      {
         return new b2PolygonContact();
      }
      
      public static function §3!0§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §+N§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            super.§+N§(param1,param2);
         }
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:b2Body = b2internal::9!<.GetBody();
         var _loc2_:b2Body = b2internal::%,.GetBody();
         if(!_loc4_)
         {
            b2Collision.§`!e§(b2internal:: !",b2internal::9!<.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::%,.GetShape() as b2PolygonShape,_loc2_.m_xf);
         }
      }
   }
}
