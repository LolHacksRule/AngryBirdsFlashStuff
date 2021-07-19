package §8[§
{
   import §+#$§.b2Body;
   import §+#$§.b2Fixture;
   import §3"5§.b2Manifold;
   import §4!$§.b2EdgeShape;
   import §4!$§.b2PolygonShape;
   import §4!$§.b2Shape;
   import §5"i§.b2Settings;
   import §5"i§.b2internal;
   import §[R§.b2Transform;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      public static function §=!S§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §;!"§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §'B§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            super.§'B§(param1,param2);
            while(true)
            {
               b2Settings.b2Assert(param1.§8! §() == b2Shape.§ !7§);
               while(!_loc3_)
               {
                  b2Settings.b2Assert(param2.§8! §() == b2Shape.§5"l§);
                  if(_loc4_)
                  {
                     return;
                     addr49:
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:b2Body = b2internal::8"Q.GetBody();
         var _loc2_:b2Body = b2internal::?# .GetBody();
         if(_loc4_ || _loc2_)
         {
            this.§,"]§(b2internal::!#Y,b2internal::8"Q.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::?# .GetShape() as b2EdgeShape,_loc2_.m_xf);
         }
      }
      
      private function §,"]§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
