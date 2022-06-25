package §6!9§
{
   import §#!"§.b2CircleShape;
   import §#!"§.b2EdgeShape;
   import §&L§.b2Transform;
   import §'s§.b2Manifold;
   import §+!,§.b2internal;
   import §]=§.b2Body;
   import §]=§.b2Fixture;
   
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
      
      public static function §]!U§(param1:*) : b2Contact
      {
         return new b2EdgeAndCircleContact();
      }
      
      public static function §"P§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §@!D§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.§@!D§(param1,param2);
         }
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:b2Body = §41§.GetBody();
         var _loc2_:b2Body = §[0§.GetBody();
         if(_loc3_ || _loc1_)
         {
            this.§8+§(§^O§,§41§.GetShape() as b2EdgeShape,_loc1_.m_xf,§[0§.GetShape() as b2CircleShape,_loc2_.m_xf);
         }
      }
      
      private function §8+§(param1:b2Manifold, param2:b2EdgeShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
      }
   }
}
