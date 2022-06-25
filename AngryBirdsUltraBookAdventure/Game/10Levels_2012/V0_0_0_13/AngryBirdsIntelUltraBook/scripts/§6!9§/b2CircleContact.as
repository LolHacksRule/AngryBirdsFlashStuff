package §6!9§
{
   import §#!"§.b2CircleShape;
   import §'s§.b2Collision;
   import §+!,§.b2internal;
   import §]=§.b2Body;
   import §]=§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2CircleContact extends b2Contact
   {
       
      
      public function b2CircleContact()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §]!U§(param1:*) : b2Contact
      {
         return new b2CircleContact();
      }
      
      public static function §"P§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §@!D§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            super.§@!D§(param1,param2);
         }
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:b2Body = §41§.GetBody();
         var _loc2_:b2Body = §[0§.GetBody();
         if(_loc4_)
         {
            b2Collision.§^!b§(§^O§,§41§.GetShape() as b2CircleShape,_loc1_.m_xf,§[0§.GetShape() as b2CircleShape,_loc2_.m_xf);
         }
      }
   }
}
