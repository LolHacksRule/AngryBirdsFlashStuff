package §-"&§
{
   import §"y§.b2CircleShape;
   import §'F§.b2internal;
   import §3!`§.b2Body;
   import §3!`§.b2Fixture;
   import §^9§.b2Collision;
   
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
      
      public static function §2#§(param1:*) : b2Contact
      {
         return new b2CircleContact();
      }
      
      public static function §5f§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §?!r§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.§?!r§(param1,param2);
         }
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:b2Body = b2internal::]R.GetBody();
         var _loc2_:b2Body = b2internal::7!&.GetBody();
         if(_loc4_ || _loc2_)
         {
            b2Collision.§"D§(b2internal::=!P,b2internal::]R.GetShape() as b2CircleShape,_loc1_.m_xf,b2internal::7!&.GetShape() as b2CircleShape,_loc2_.m_xf);
         }
      }
   }
}
