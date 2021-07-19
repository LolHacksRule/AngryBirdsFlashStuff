package §30§
{
   import § o§.b2Body;
   import § o§.b2Fixture;
   import §"0§.b2Settings;
   import §"0§.b2internal;
   import §-r§.b2Collision;
   import §]!S§.b2CircleShape;
   import §]!S§.b2PolygonShape;
   import §]!S§.b2Shape;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §#!M§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §[!$§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §2'§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super.§2'§(param1,param2);
            while(true)
            {
               b2Settings.b2Assert(param1.§7!_§() == b2Shape.§"![§);
               loop1:
               while(_loc3_ || param2)
               {
                  while(true)
                  {
                     b2Settings.b2Assert(param2.§7!_§() == b2Shape.§,-§);
                     if(_loc3_ || param1)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr74);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:b2Body = b2internal::45.m_body;
         var _loc2_:b2Body = b2internal::?G.m_body;
         if(_loc3_ || _loc1_)
         {
            b2Collision.§'d§(b2internal::-0,b2internal::45.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::?G.GetShape() as b2CircleShape,_loc2_.m_xf);
         }
      }
   }
}
