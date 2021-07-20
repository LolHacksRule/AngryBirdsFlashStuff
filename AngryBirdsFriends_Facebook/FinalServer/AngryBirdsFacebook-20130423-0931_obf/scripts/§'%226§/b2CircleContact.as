package §'"6§
{
   import §!"3§.b2CircleShape;
   import §'"-§.b2Collision;
   import §,"[§.b2internal;
   import §6"1§.b2Body;
   import §6"1§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2CircleContact extends b2Contact
   {
       
      
      public function b2CircleContact()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §3!N§(param1:*) : b2Contact
      {
         return new b2CircleContact();
      }
      
      public static function §2!s§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §<"U§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super.§<"U§(param1,param2);
         }
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:b2Body = b2internal::4!?.GetBody();
         var _loc2_:b2Body = b2internal::3!B.GetBody();
         if(!_loc3_)
         {
            b2Collision.§%"G§(b2internal::<!+,b2internal::4!?.GetShape() as b2CircleShape,_loc1_.m_xf,b2internal::3!B.GetShape() as b2CircleShape,_loc2_.m_xf);
         }
      }
   }
}
