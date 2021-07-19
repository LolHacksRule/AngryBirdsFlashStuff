package §=!n§
{
   import §'!&§.b2Body;
   import §'!&§.b2Fixture;
   import §,Z§.b2CircleShape;
   import §,Z§.b2PolygonShape;
   import §,Z§.b2Shape;
   import §3c§.b2Collision;
   import §@!'§.b2Settings;
   import §@!'§.b2internal;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §]H§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §^!a§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §`"<§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.§`"<§(param1,param2);
            while(true)
            {
               b2Settings.b2Assert(param1.§@!N§() == b2Shape.§4"+§);
               loop1:
               while(_loc4_)
               {
                  while(true)
                  {
                     b2Settings.b2Assert(param2.§@!N§() == b2Shape.§-M§);
                     if(_loc4_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr65);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:b2Body = b2internal::;"B.m_body;
         var _loc2_:b2Body = b2internal::8q.m_body;
         if(_loc4_ || _loc1_)
         {
            b2Collision.§1!6§(b2internal::8!?,b2internal::;"B.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::8q.GetShape() as b2CircleShape,_loc2_.m_xf);
         }
      }
   }
}
