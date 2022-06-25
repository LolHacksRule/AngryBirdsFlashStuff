package §>s§
{
   import §,X§.b2CircleShape;
   import §,X§.b2EdgeShape;
   import §1%§.b2Body;
   import §1%§.b2Fixture;
   import §8!H§.b2internal;
   import §?!&§.b2Transform;
   import §`!H§.b2Manifold;
   
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
      
      public static function §;!]§(param1:*) : b2Contact
      {
         return new b2EdgeAndCircleContact();
      }
      
      public static function §"!Q§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §`!B§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.§`!B§(param1,param2);
         }
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:b2Body = §]r§.GetBody();
         var _loc2_:b2Body = §"!F§.GetBody();
         if(_loc3_ || _loc1_)
         {
            this.§8!`§(§]0§,§]r§.GetShape() as b2EdgeShape,_loc1_.m_xf,§"!F§.GetShape() as b2CircleShape,_loc2_.m_xf);
         }
      }
      
      private function §8!`§(param1:b2Manifold, param2:b2EdgeShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
      }
   }
}
