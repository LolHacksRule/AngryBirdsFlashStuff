package §'"6§
{
   import §!"3§.b2CircleShape;
   import §!"3§.b2PolygonShape;
   import §!"3§.b2Shape;
   import §'"-§.b2Collision;
   import §,"[§.b2Settings;
   import §,"[§.b2internal;
   import §6"1§.b2Body;
   import §6"1§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
      }
      
      public static function §3!N§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §2!s§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §<"U§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            super.§<"U§(param1,param2);
            while(true)
            {
               b2Settings.b2Assert(param1.§>!f§() == b2Shape.§8x§);
               §§goto(addr75);
            }
         }
         addr75:
         while(true)
         {
            b2Settings.b2Assert(param2.§>!f§() == b2Shape.§ "&§);
            if(_loc4_ || this)
            {
               if(!_loc3_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:b2Body = b2internal::4!?.m_body;
         var _loc2_:b2Body = b2internal::3!B.m_body;
         if(_loc3_ || _loc2_)
         {
            b2Collision.§;!R§(b2internal::<!+,b2internal::4!?.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::3!B.GetShape() as b2CircleShape,_loc2_.m_xf);
         }
      }
   }
}
