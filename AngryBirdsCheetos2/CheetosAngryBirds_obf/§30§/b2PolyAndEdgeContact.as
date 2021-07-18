package §30§
{
   import § o§.b2Body;
   import § o§.b2Fixture;
   import §"0§.b2Settings;
   import §"0§.b2internal;
   import §-r§.b2Manifold;
   import §6!H§.b2Transform;
   import §]!S§.b2EdgeShape;
   import §]!S§.b2PolygonShape;
   import §]!S§.b2Shape;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §#!M§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §[!$§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §2'§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.§2'§(param1,param2);
            while(true)
            {
               b2Settings.b2Assert(param1.§7!_§() == b2Shape.§"![§);
               loop1:
               while(!_loc4_)
               {
                  while(true)
                  {
                     b2Settings.b2Assert(param2.§7!_§() == b2Shape.§#!D§);
                     if(!(_loc4_ && _loc3_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr69);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:b2Body = b2internal::45.GetBody();
         var _loc2_:b2Body = b2internal::?G.GetBody();
         if(!(_loc3_ && _loc3_))
         {
            this.§#!N§(b2internal::-0,b2internal::45.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::?G.GetShape() as b2EdgeShape,_loc2_.m_xf);
         }
      }
      
      private function §#!N§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
