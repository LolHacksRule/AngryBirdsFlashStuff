package §;!e§
{
   import §"J§.b2Body;
   import §"J§.b2Fixture;
   import §%4§.b2Manifold;
   import §2k§.b2EdgeShape;
   import §2k§.b2PolygonShape;
   import §2k§.b2Shape;
   import §<!a§.b2Transform;
   import §<";§.b2Settings;
   import §<";§.b2internal;
   
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
      
      public static function §`!P§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §3!0§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §+N§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.§+N§(param1,param2);
         }
         while(true)
         {
            b2Settings.b2Assert(param1.§;!F§() == b2Shape.§<!D§);
            while(_loc4_ || param1)
            {
               b2Settings.b2Assert(param2.§;!F§() == b2Shape.§=!E§);
               if(_loc4_)
               {
                  return;
               }
            }
         }
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:b2Body = b2internal::9!<.GetBody();
         var _loc2_:b2Body = b2internal::%,.GetBody();
         if(!_loc4_)
         {
            this.§2n§(b2internal:: !",b2internal::9!<.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::%,.GetShape() as b2EdgeShape,_loc2_.m_xf);
         }
      }
      
      private function §2n§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
