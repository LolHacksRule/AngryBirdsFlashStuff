package §#!0§
{
   import §!m§.b2Collision;
   import §+!g§.b2internal;
   import §0!3§.b2CircleShape;
   import §>!L§.b2Body;
   import §>!L§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2CircleContact extends b2Contact
   {
       
      
      public function b2CircleContact()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
         }
      }
      
      public static function §@!L§(param1:*) : b2Contact
      {
         return new b2CircleContact();
      }
      
      public static function §"G§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §9=§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super.§9=§(param1,param2);
         }
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:b2Body = §7d§.GetBody();
         var _loc2_:b2Body = §-F§.GetBody();
         if(!_loc4_)
         {
            b2Collision.§4_§(§,S§,§7d§.GetShape() as b2CircleShape,_loc1_.m_xf,§-F§.GetShape() as b2CircleShape,_loc2_.m_xf);
         }
      }
   }
}
