package §;T§
{
   import §"!9§.b2CircleShape;
   import §"!9§.b2PolygonShape;
   import §"!9§.b2Shape;
   import §+S§.b2Body;
   import §+S§.b2Fixture;
   import §5!o§.b2Collision;
   import §=o§.b2Settings;
   import §=o§.b2internal;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §-!x§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §;&§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §%i§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super.§%i§(param1,param2);
            do
            {
               b2Settings.b2Assert(param1.§+!O§() == b2Shape.§4A§);
               do
               {
                  b2Settings.b2Assert(param2.§+!O§() == b2Shape.§[x§);
               }
               while(_loc3_ && param2);
               
            }
            while(_loc3_ && _loc3_);
            
         }
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:b2Body = b2internal::5"$.m_body;
         var _loc2_:b2Body = b2internal::dynamic.m_body;
         if(_loc3_ || this)
         {
            b2Collision.§5!%§(b2internal::=&,b2internal::5"$.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::dynamic.GetShape() as b2CircleShape,_loc2_.m_xf);
         }
      }
   }
}
