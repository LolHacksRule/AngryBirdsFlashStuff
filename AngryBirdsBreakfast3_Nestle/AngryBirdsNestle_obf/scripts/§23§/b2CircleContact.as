package §23§
{
   import §!§.b2Collision;
   import §'!_§.b2internal;
   import §0"!§.b2Body;
   import §0"!§.b2Fixture;
   import §=!!§.b2CircleShape;
   
   use namespace b2internal;
   
   public class b2CircleContact extends b2Contact
   {
       
      
      public function b2CircleContact()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      public static function §'!D§(param1:*) : b2Contact
      {
         return new b2CircleContact();
      }
      
      public static function §7!d§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §[!2§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            super.§[!2§(param1,param2);
         }
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:b2Body = b2internal::2!k.GetBody();
         var _loc2_:b2Body = b2internal::4!l.GetBody();
         if(!_loc4_)
         {
            b2Collision.§+!n§(b2internal::=!u,b2internal::2!k.GetShape() as b2CircleShape,_loc1_.m_xf,b2internal::4!l.GetShape() as b2CircleShape,_loc2_.m_xf);
         }
      }
   }
}
