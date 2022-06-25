package §#!0§
{
   import §!m§.b2Manifold;
   import §+!g§.b2Settings;
   import §+!g§.b2internal;
   import §0!3§.b2EdgeShape;
   import §0!3§.b2PolygonShape;
   import §0!3§.b2Shape;
   import §>!8§.b2Transform;
   import §>!L§.b2Body;
   import §>!L§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
         }
      }
      
      public static function §@!L§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §"G§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §9=§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            super.§9=§(param1,param2);
            while(true)
            {
               b2Settings.b2Assert(param1.§6!-§() == b2Shape.§9Q§);
               while(_loc4_ || param2)
               {
                  b2Settings.b2Assert(param2.§6!-§() == b2Shape.§#[§);
                  if(!(_loc4_ || this))
                  {
                     continue;
                  }
                  return;
                  addr67:
               }
            }
         }
         §§goto(addr67);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:b2Body = §7d§.GetBody();
         var _loc2_:b2Body = §-F§.GetBody();
         if(!(_loc4_ && this))
         {
            this.§;!>§(§,S§,§7d§.GetShape() as b2PolygonShape,_loc1_.m_xf,§-F§.GetShape() as b2EdgeShape,_loc2_.m_xf);
         }
      }
      
      private function §;!>§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
