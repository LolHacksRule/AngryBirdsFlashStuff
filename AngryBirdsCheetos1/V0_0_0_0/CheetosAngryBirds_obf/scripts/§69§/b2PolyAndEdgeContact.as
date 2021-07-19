package §69§
{
   import § G§.b2Manifold;
   import §&!"§.b2Body;
   import §&!"§.b2Fixture;
   import §-!C§.b2EdgeShape;
   import §-!C§.b2PolygonShape;
   import §-!C§.b2Shape;
   import §9"§.b2Transform;
   import §>!@§.b2Settings;
   import §>!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §?!@§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §4!L§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §"o§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super.§"o§(param1,param2);
            while(true)
            {
               b2Settings.b2Assert(param1.§0!$§() == b2Shape.§;!5§);
               while(_loc4_ || _loc3_)
               {
                  b2Settings.b2Assert(param2.§0!$§() == b2Shape.§"?§);
                  if(!(_loc4_ || this))
                  {
                     continue;
                  }
                  return;
                  addr49:
               }
            }
         }
         §§goto(addr49);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:b2Body = b2internal::<D.GetBody();
         var _loc2_:b2Body = b2internal::+p.GetBody();
         if(!_loc4_)
         {
            this.§!0§(b2internal::'&,b2internal::<D.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::+p.GetShape() as b2EdgeShape,_loc2_.m_xf);
         }
      }
      
      private function §!0§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
