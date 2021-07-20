package §_-a5§
{
   import §_-Iw§.b2Body;
   import §_-Iw§.b2Fixture;
   import §_-Kt§.b2CircleShape;
   import §_-Kt§.b2PolygonShape;
   import §_-Kt§.b2Shape;
   import §_-lh§.b2Settings;
   import §_-lh§.b2internal;
   import §_-qg§.b2Collision;
   
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
      
      public static function §_-xO§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §_-2A§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §_-i0§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super.§_-i0§(param1,param2);
            if(_loc3_ || param2)
            {
               b2Settings.b2Assert(param1.§_-ww§() == b2Shape.§_-6T§);
               if(!(_loc4_ && param2))
               {
                  addr54:
                  b2Settings.b2Assert(param2.§_-ww§() == b2Shape.§_-n7§);
               }
            }
            return;
         }
         §§goto(addr54);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:b2Body = b2internal::_-NZ.m_body;
         var _loc2_:b2Body = b2internal::_-xL.m_body;
         if(_loc4_)
         {
            b2Collision.§_-Ip§(b2internal::_-Xg,b2internal::_-NZ.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::_-xL.GetShape() as b2CircleShape,_loc2_.m_xf);
         }
      }
   }
}
