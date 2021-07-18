package §;T§
{
   import §"!9§.b2EdgeShape;
   import §"!9§.b2PolygonShape;
   import §"!9§.b2Shape;
   import §+S§.b2Body;
   import §+S§.b2Fixture;
   import §2"=§.b2Transform;
   import §5!o§.b2Manifold;
   import §=o§.b2Settings;
   import §=o§.b2internal;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      public static function §-!x§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §;&§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §%i§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            super.§%i§(param1,param2);
            while(true)
            {
               b2Settings.b2Assert(param1.§+!O§() == b2Shape.§4A§);
               §§goto(addr75);
            }
         }
         addr75:
         while(true)
         {
            b2Settings.b2Assert(param2.§+!O§() == b2Shape.§;!O§);
            if(!_loc3_)
            {
               if(!(_loc3_ && this))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:b2Body = b2internal::5"$.GetBody();
         var _loc2_:b2Body = b2internal::dynamic.GetBody();
         if(!_loc3_)
         {
            this.§!" §(b2internal::=&,b2internal::5"$.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::dynamic.GetShape() as b2EdgeShape,_loc2_.m_xf);
         }
      }
      
      private function §!" §(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
