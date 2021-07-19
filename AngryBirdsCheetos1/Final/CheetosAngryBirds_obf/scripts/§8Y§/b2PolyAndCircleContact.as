package §8Y§
{
   import §&U§.b2CircleShape;
   import §&U§.b2PolygonShape;
   import §&U§.b2Shape;
   import §2!F§.b2Settings;
   import §2!F§.b2internal;
   import §9"§.b2Collision;
   import §`j§.b2Body;
   import §`j§.b2Fixture;
   
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
      
      public static function §>y§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §;@§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §8j§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            super.§8j§(param1,param2);
         }
         do
         {
            b2Settings.b2Assert(param1.§"!M§() == b2Shape.§,!K§);
            do
            {
               b2Settings.b2Assert(param2.§"!M§() == b2Shape.§&!L§);
            }
            while(_loc4_);
            
         }
         while(!(_loc3_ || this));
         
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:b2Body = b2internal::1!,.m_body;
         var _loc2_:b2Body = b2internal::7+.m_body;
         if(_loc4_)
         {
            b2Collision.§3s§(b2internal::&C,b2internal::1!,.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::7+.GetShape() as b2CircleShape,_loc2_.m_xf);
         }
      }
   }
}
