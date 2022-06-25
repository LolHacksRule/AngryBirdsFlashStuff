package §,G§
{
   import §#V§.b2Body;
   import §#V§.b2Fixture;
   import §,C§.b2CircleShape;
   import §3!m§.b2internal;
   import §8w§.b2Collision;
   
   use namespace b2internal;
   
   public class b2CircleContact extends b2Contact
   {
       
      
      public function b2CircleContact()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §1#§(param1:*) : b2Contact
      {
         return new b2CircleContact();
      }
      
      public static function §,!W§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §@!b§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super.§@!b§(param1,param2);
         }
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:b2Body = b2internal::3t.GetBody();
         var _loc2_:b2Body = b2internal::[i.GetBody();
         if(!_loc3_)
         {
            b2Collision.§8A§(b2internal::2?,b2internal::3t.GetShape() as b2CircleShape,_loc1_.m_xf,b2internal::[i.GetShape() as b2CircleShape,_loc2_.m_xf);
         }
      }
   }
}
