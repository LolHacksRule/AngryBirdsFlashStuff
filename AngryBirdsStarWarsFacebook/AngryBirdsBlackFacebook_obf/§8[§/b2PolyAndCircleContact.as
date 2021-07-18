package §8[§
{
   import §+#$§.b2Body;
   import §+#$§.b2Fixture;
   import §3"5§.b2Collision;
   import §4!$§.b2CircleShape;
   import §4!$§.b2PolygonShape;
   import §4!$§.b2Shape;
   import §5"i§.b2Settings;
   import §5"i§.b2internal;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      public static function §=!S§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §;!"§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §'B§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            super.§'B§(param1,param2);
         }
         do
         {
            b2Settings.b2Assert(param1.§8! §() == b2Shape.§ !7§);
            do
            {
               b2Settings.b2Assert(param2.§8! §() == b2Shape.§;!T§);
            }
            while(!(_loc3_ || param2));
            
         }
         while(!(_loc3_ || _loc3_));
         
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:b2Body = b2internal::8"Q.m_body;
         var _loc2_:b2Body = b2internal::?# .m_body;
         if(!_loc3_)
         {
            b2Collision.§7"S§(b2internal::!#Y,b2internal::8"Q.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::?# .GetShape() as b2CircleShape,_loc2_.m_xf);
         }
      }
   }
}
