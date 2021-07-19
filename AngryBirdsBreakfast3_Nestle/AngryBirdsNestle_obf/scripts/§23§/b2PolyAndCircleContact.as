package §23§
{
   import §!§.b2Collision;
   import §'!_§.b2Settings;
   import §'!_§.b2internal;
   import §0"!§.b2Body;
   import §0"!§.b2Fixture;
   import §=!!§.b2CircleShape;
   import §=!!§.b2PolygonShape;
   import §=!!§.b2Shape;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
         }
      }
      
      public static function §'!D§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §7!d§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §[!2§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            super.§[!2§(param1,param2);
         }
         while(true)
         {
            b2Settings.b2Assert(param1.§4!v§() == b2Shape.§3!;§);
            while(_loc4_ || param2)
            {
               b2Settings.b2Assert(param2.§4!v§() == b2Shape.§+!B§);
               if(!_loc3_)
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
         var _loc1_:b2Body = b2internal::2!k.m_body;
         var _loc2_:b2Body = b2internal::4!l.m_body;
         if(_loc4_)
         {
            b2Collision.§94§(b2internal::=!u,b2internal::2!k.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::4!l.GetShape() as b2CircleShape,_loc2_.m_xf);
         }
      }
   }
}
