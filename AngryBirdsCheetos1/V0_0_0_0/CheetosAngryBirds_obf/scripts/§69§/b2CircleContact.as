package §69§
{
   import § G§.b2Collision;
   import §&!"§.b2Body;
   import §&!"§.b2Fixture;
   import §-!C§.b2CircleShape;
   import §>!@§.b2internal;
   
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
      
      public static function §?!@§(param1:*) : b2Contact
      {
         return new b2CircleContact();
      }
      
      public static function §4!L§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §"o§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            super.§"o§(param1,param2);
         }
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:b2Body = b2internal::<D.GetBody();
         var _loc2_:b2Body = b2internal::+p.GetBody();
         if(_loc3_ || this)
         {
            b2Collision.§ !B§(b2internal::'&,b2internal::<D.GetShape() as b2CircleShape,_loc1_.m_xf,b2internal::+p.GetShape() as b2CircleShape,_loc2_.m_xf);
         }
      }
   }
}
