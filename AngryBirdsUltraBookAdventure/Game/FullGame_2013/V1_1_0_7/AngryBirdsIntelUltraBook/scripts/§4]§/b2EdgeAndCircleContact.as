package §4]§
{
   import §#I§.b2Body;
   import §#I§.b2Fixture;
   import §&H§.b2Transform;
   import §3b§.b2CircleShape;
   import §3b§.b2EdgeShape;
   import §>!Z§.b2Manifold;
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2EdgeAndCircleContact extends b2Contact
   {
       
      
      public function b2EdgeAndCircleContact()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
      }
      
      public static function §1!Y§(param1:*) : b2Contact
      {
         return new b2EdgeAndCircleContact();
      }
      
      public static function §=_§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §2I§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.§2I§(param1,param2);
         }
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:b2Body = b2internal::]V.GetBody();
         var _loc2_:b2Body = b2internal::!j.GetBody();
         if(_loc4_ || this)
         {
            this.§%g§(b2internal::7!l,b2internal::]V.GetShape() as b2EdgeShape,_loc1_.m_xf,b2internal::!j.GetShape() as b2CircleShape,_loc2_.m_xf);
         }
      }
      
      private function §%g§(param1:b2Manifold, param2:b2EdgeShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
      }
   }
}
