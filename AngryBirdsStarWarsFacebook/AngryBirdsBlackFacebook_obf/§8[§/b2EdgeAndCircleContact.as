package §8[§
{
   import §+#$§.b2Body;
   import §+#$§.b2Fixture;
   import §3"5§.b2Manifold;
   import §4!$§.b2CircleShape;
   import §4!$§.b2EdgeShape;
   import §5"i§.b2internal;
   import §[R§.b2Transform;
   
   use namespace b2internal;
   
   public class b2EdgeAndCircleContact extends b2Contact
   {
       
      
      public function b2EdgeAndCircleContact()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      public static function §=!S§(param1:*) : b2Contact
      {
         return new b2EdgeAndCircleContact();
      }
      
      public static function §;!"§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §'B§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.§'B§(param1,param2);
         }
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:b2Body = b2internal::8"Q.GetBody();
         var _loc2_:b2Body = b2internal::?# .GetBody();
         if(_loc3_ || _loc3_)
         {
            this.§9M§(b2internal::!#Y,b2internal::8"Q.GetShape() as b2EdgeShape,_loc1_.m_xf,b2internal::?# .GetShape() as b2CircleShape,_loc2_.m_xf);
         }
      }
      
      private function §9M§(param1:b2Manifold, param2:b2EdgeShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
      }
   }
}
