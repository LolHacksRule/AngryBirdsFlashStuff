package §-"&§
{
   import §"y§.b2CircleShape;
   import §"y§.b2PolygonShape;
   import §"y§.b2Shape;
   import §'F§.b2Settings;
   import §'F§.b2internal;
   import §3!`§.b2Body;
   import §3!`§.b2Fixture;
   import §^9§.b2Collision;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §2#§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §5f§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §?!r§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            super.§?!r§(param1,param2);
            do
            {
               b2Settings.b2Assert(param1.§<!A§() == b2Shape.§2e§);
               do
               {
                  b2Settings.b2Assert(param2.§<!A§() == b2Shape.§9_§);
               }
               while(_loc3_);
               
            }
            while(!_loc4_);
            
         }
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:b2Body = b2internal::]R.m_body;
         var _loc2_:b2Body = b2internal::7!&.m_body;
         if(!(_loc4_ && _loc1_))
         {
            b2Collision.§@8§(b2internal::=!P,b2internal::]R.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::7!&.GetShape() as b2CircleShape,_loc2_.m_xf);
         }
      }
   }
}
