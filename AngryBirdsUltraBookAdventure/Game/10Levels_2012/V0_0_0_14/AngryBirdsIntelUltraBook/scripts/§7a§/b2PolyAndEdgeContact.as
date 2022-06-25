package §7a§
{
   import § D§.b2Body;
   import § D§.b2Fixture;
   import §&!-§.b2Manifold;
   import §0!'§.b2EdgeShape;
   import §0!'§.b2PolygonShape;
   import §0!'§.b2Shape;
   import §8>§.b2Transform;
   import §;u§.b2Settings;
   import §;u§.b2internal;
   
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
      
      public static function §5=§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §"L§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §#[§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.§#[§(param1,param2);
            while(true)
            {
               b2Settings.b2Assert(param1.§0!@§() == b2Shape.§8y§);
               while(_loc3_ || param1)
               {
                  b2Settings.b2Assert(param2.§0!@§() == b2Shape.§<!o§);
                  if(!(_loc3_ || param2))
                  {
                     continue;
                  }
                  return;
                  addr58:
               }
            }
         }
         §§goto(addr58);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:b2Body = b2internal::48.GetBody();
         var _loc2_:b2Body = b2internal::[=.GetBody();
         if(_loc4_ || _loc1_)
         {
            this.§,!N§(b2internal::?K,b2internal::48.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::[=.GetShape() as b2EdgeShape,_loc2_.m_xf);
         }
      }
      
      private function §,!N§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
