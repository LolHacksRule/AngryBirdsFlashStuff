package §6!9§
{
   import §#!"§.b2EdgeShape;
   import §#!"§.b2PolygonShape;
   import §#!"§.b2Shape;
   import §&L§.b2Transform;
   import §'s§.b2Manifold;
   import §+!,§.b2Settings;
   import §+!,§.b2internal;
   import §]=§.b2Body;
   import §]=§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      public static function §]!U§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §"P§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §@!D§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            super.§@!D§(param1,param2);
            while(true)
            {
               b2Settings.b2Assert(param1.§-V§() == b2Shape.§2r§);
               while(_loc4_ || param2)
               {
                  b2Settings.b2Assert(param2.§-V§() == b2Shape.§>!"§);
                  if(!(_loc4_ || param1))
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
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:b2Body = §41§.GetBody();
         var _loc2_:b2Body = §[0§.GetBody();
         if(_loc4_ || _loc1_)
         {
            this.§#$§(§^O§,§41§.GetShape() as b2PolygonShape,_loc1_.m_xf,§[0§.GetShape() as b2EdgeShape,_loc2_.m_xf);
         }
      }
      
      private function §#$§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
