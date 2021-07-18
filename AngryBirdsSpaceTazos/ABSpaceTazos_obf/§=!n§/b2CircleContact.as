package §=!n§
{
   import §'!&§.b2Body;
   import §'!&§.b2Fixture;
   import §,Z§.b2CircleShape;
   import §3c§.b2Collision;
   import §@!'§.b2internal;
   
   use namespace b2internal;
   
   public class b2CircleContact extends b2Contact
   {
       
      
      public function b2CircleContact()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      public static function §]H§(param1:*) : b2Contact
      {
         return new b2CircleContact();
      }
      
      public static function §^!a§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §`"<§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            super.§`"<§(param1,param2);
         }
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:b2Body = b2internal::;"B.GetBody();
         var _loc2_:b2Body = b2internal::8q.GetBody();
         if(!(_loc4_ && this))
         {
            b2Collision.§ !3§(b2internal::8!?,b2internal::;"B.GetShape() as b2CircleShape,_loc1_.m_xf,b2internal::8q.GetShape() as b2CircleShape,_loc2_.m_xf);
         }
      }
   }
}
