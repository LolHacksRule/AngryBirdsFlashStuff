package §;!e§
{
   import §"J§.b2Body;
   import §"J§.b2Fixture;
   import §%4§.b2Collision;
   import §2k§.b2CircleShape;
   import §2k§.b2PolygonShape;
   import §2k§.b2Shape;
   import §<";§.b2Settings;
   import §<";§.b2internal;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §`!P§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
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
         while(true)
         {
            b2Settings.b2Assert(param1.§;!F§() == b2Shape.§<!D§);
            while(_loc3_)
            {
               b2Settings.b2Assert(param2.§;!F§() == b2Shape.§;n§);
               if(!_loc4_)
               {
                  return;
               }
            }
         }
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:b2Body = b2internal::9!<.m_body;
         var _loc2_:b2Body = b2internal::%,.m_body;
         if(_loc4_ || _loc3_)
         {
            b2Collision.§%d§(b2internal:: !",b2internal::9!<.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::%,.GetShape() as b2CircleShape,_loc2_.m_xf);
         }
      }
   }
}
