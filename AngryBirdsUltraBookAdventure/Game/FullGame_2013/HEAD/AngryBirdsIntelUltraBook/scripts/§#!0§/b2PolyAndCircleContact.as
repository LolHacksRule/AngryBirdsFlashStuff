package §#!0§
{
   import §!m§.b2Collision;
   import §+!g§.b2Settings;
   import §+!g§.b2internal;
   import §0!3§.b2CircleShape;
   import §0!3§.b2PolygonShape;
   import §0!3§.b2Shape;
   import §>!L§.b2Body;
   import §>!L§.b2Fixture;
   
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
      
      public static function §@!L§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §"G§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §9=§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            super.§9=§(param1,param2);
            while(true)
            {
               b2Settings.b2Assert(param1.§6!-§() == b2Shape.§9Q§);
               loop1:
               while(_loc3_ || param1)
               {
                  while(true)
                  {
                     b2Settings.b2Assert(param2.§6!-§() == b2Shape.§^%§);
                     if(!_loc4_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr80);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:b2Body = §7d§.m_body;
         var _loc2_:b2Body = §-F§.m_body;
         if(!(_loc4_ && this))
         {
            b2Collision.§&$§(§,S§,§7d§.GetShape() as b2PolygonShape,_loc1_.m_xf,§-F§.GetShape() as b2CircleShape,_loc2_.m_xf);
         }
      }
   }
}
