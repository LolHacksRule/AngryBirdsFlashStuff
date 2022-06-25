package §4]§
{
   import §#I§.b2Body;
   import §#I§.b2Fixture;
   import §3b§.b2CircleShape;
   import §3b§.b2PolygonShape;
   import §3b§.b2Shape;
   import §>!Z§.b2Collision;
   import §@!3§.b2Settings;
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §1!Y§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §=_§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §2I§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            super.§2I§(param1,param2);
            while(true)
            {
               b2Settings.b2Assert(param1.§ 5§() == b2Shape.§=&§);
               while(!(_loc4_ && param2))
               {
                  b2Settings.b2Assert(param2.§ 5§() == b2Shape.§^!6§);
                  if(!(_loc3_ || _loc3_))
                  {
                     continue;
                  }
                  return;
                  addr63:
               }
            }
         }
         §§goto(addr63);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:b2Body = b2internal::]V.m_body;
         var _loc2_:b2Body = b2internal::!j.m_body;
         if(!(_loc4_ && this))
         {
            b2Collision.§;R§(b2internal::7!l,b2internal::]V.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::!j.GetShape() as b2CircleShape,_loc2_.m_xf);
         }
      }
   }
}
