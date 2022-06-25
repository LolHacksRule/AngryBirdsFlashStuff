package §#!0§
{
   import §!m§.b2Manifold;
   import §+!g§.b2internal;
   import §0!3§.b2CircleShape;
   import §0!3§.b2EdgeShape;
   import §>!8§.b2Transform;
   import §>!L§.b2Body;
   import §>!L§.b2Fixture;
   
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
      
      public static function §@!L§(param1:*) : b2Contact
      {
         return new b2EdgeAndCircleContact();
      }
      
      public static function §"G§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §9=§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            super.§9=§(param1,param2);
         }
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:b2Body = §7d§.GetBody();
         var _loc2_:b2Body = §-F§.GetBody();
         if(_loc3_)
         {
            this.§@j§(§,S§,§7d§.GetShape() as b2EdgeShape,_loc1_.m_xf,§-F§.GetShape() as b2CircleShape,_loc2_.m_xf);
         }
      }
      
      private function §@j§(param1:b2Manifold, param2:b2EdgeShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
      }
   }
}
