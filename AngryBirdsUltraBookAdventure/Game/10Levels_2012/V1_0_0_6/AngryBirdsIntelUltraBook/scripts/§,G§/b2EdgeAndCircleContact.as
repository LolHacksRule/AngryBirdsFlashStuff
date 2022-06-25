package §,G§
{
   import §#V§.b2Body;
   import §#V§.b2Fixture;
   import §,C§.b2CircleShape;
   import §,C§.b2EdgeShape;
   import §3!m§.b2internal;
   import §8w§.b2Manifold;
   import §;%§.b2Transform;
   
   use namespace b2internal;
   
   public class b2EdgeAndCircleContact extends b2Contact
   {
       
      
      public function b2EdgeAndCircleContact()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §1#§(param1:*) : b2Contact
      {
         return new b2EdgeAndCircleContact();
      }
      
      public static function §,!W§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §@!b§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            super.§@!b§(param1,param2);
         }
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:b2Body = b2internal::3t.GetBody();
         var _loc2_:b2Body = b2internal::[i.GetBody();
         if(!_loc4_)
         {
            this.§>!T§(b2internal::2?,b2internal::3t.GetShape() as b2EdgeShape,_loc1_.m_xf,b2internal::[i.GetShape() as b2CircleShape,_loc2_.m_xf);
         }
      }
      
      private function §>!T§(param1:b2Manifold, param2:b2EdgeShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
      }
   }
}
