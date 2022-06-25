package §6!9§
{
   import §#!"§.b2CircleShape;
   import §#!"§.b2PolygonShape;
   import §#!"§.b2Shape;
   import §'s§.b2Collision;
   import §+!,§.b2Settings;
   import §+!,§.b2internal;
   import §]=§.b2Body;
   import §]=§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §]!U§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §"P§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §@!D§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super.§@!D§(param1,param2);
            while(true)
            {
               b2Settings.b2Assert(param1.§-V§() == b2Shape.§2r§);
               loop1:
               while(!(_loc4_ && param1))
               {
                  while(true)
                  {
                     b2Settings.b2Assert(param2.§-V§() == b2Shape.§!!W§);
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
         §§goto(addr75);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:b2Body = §41§.m_body;
         var _loc2_:b2Body = §[0§.m_body;
         if(_loc3_ || _loc2_)
         {
            b2Collision.§4A§(§^O§,§41§.GetShape() as b2PolygonShape,_loc1_.m_xf,§[0§.GetShape() as b2CircleShape,_loc2_.m_xf);
         }
      }
   }
}
