package §7a§
{
   import § D§.b2Body;
   import § D§.b2Fixture;
   import §&!-§.b2Collision;
   import §0!'§.b2CircleShape;
   import §0!'§.b2PolygonShape;
   import §0!'§.b2Shape;
   import §;u§.b2Settings;
   import §;u§.b2internal;
   
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
      
      public static function §5=§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §"L§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §#[§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.§#[§(param1,param2);
            do
            {
               b2Settings.b2Assert(param1.§0!@§() == b2Shape.§8y§);
               do
               {
                  b2Settings.b2Assert(param2.§0!@§() == b2Shape.§8&§);
               }
               while(!_loc4_);
               
            }
            while(!(_loc4_ || this));
            
         }
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:b2Body = b2internal::48.m_body;
         var _loc2_:b2Body = b2internal::[=.m_body;
         if(_loc4_)
         {
            b2Collision.§-i§(b2internal::?K,b2internal::48.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::[=.GetShape() as b2CircleShape,_loc2_.m_xf);
         }
      }
   }
}
