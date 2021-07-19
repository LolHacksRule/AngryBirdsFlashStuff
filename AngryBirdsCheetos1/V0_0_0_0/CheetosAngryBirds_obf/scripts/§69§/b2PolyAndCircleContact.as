package §69§
{
   import § G§.b2Collision;
   import §&!"§.b2Body;
   import §&!"§.b2Fixture;
   import §-!C§.b2CircleShape;
   import §-!C§.b2PolygonShape;
   import §-!C§.b2Shape;
   import §>!@§.b2Settings;
   import §>!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §?!@§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §4!L§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §"o§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            super.§"o§(param1,param2);
         }
         do
         {
            b2Settings.b2Assert(param1.§0!$§() == b2Shape.§;!5§);
            do
            {
               b2Settings.b2Assert(param2.§0!$§() == b2Shape.§9!T§);
            }
            while(_loc3_ && _loc3_);
            
         }
         while(!(_loc4_ || param1));
         
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:b2Body = b2internal::<D.m_body;
         var _loc2_:b2Body = b2internal::+p.m_body;
         if(!(_loc3_ && _loc3_))
         {
            b2Collision.§^!2§(b2internal::'&,b2internal::<D.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::+p.GetShape() as b2CircleShape,_loc2_.m_xf);
         }
      }
   }
}
