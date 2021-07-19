package §;T§
{
   import §"!9§.b2CircleShape;
   import §+S§.b2Body;
   import §+S§.b2Fixture;
   import §5!o§.b2Collision;
   import §=o§.b2internal;
   
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
      
      public static function §-!x§(param1:*) : b2Contact
      {
         return new b2CircleContact();
      }
      
      public static function §;&§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §%i§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super.§%i§(param1,param2);
         }
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:b2Body = b2internal::5"$.GetBody();
         var _loc2_:b2Body = b2internal::dynamic.GetBody();
         if(_loc4_ || _loc3_)
         {
            b2Collision.§9""§(b2internal::=&,b2internal::5"$.GetShape() as b2CircleShape,_loc1_.m_xf,b2internal::dynamic.GetShape() as b2CircleShape,_loc2_.m_xf);
         }
      }
   }
}
