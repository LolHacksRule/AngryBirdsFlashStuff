package §>s§
{
   import §,X§.b2EdgeShape;
   import §,X§.b2PolygonShape;
   import §,X§.b2Shape;
   import §1%§.b2Body;
   import §1%§.b2Fixture;
   import §8!H§.b2Settings;
   import §8!H§.b2internal;
   import §?!&§.b2Transform;
   import §`!H§.b2Manifold;
   
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
      
      public static function §;!]§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §"!Q§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §`!B§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            super.§`!B§(param1,param2);
            while(true)
            {
               b2Settings.b2Assert(param1.§3r§() == b2Shape.§1!f§);
               while(_loc4_ || param2)
               {
                  b2Settings.b2Assert(param2.§3r§() == b2Shape.§]&§);
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
         var _loc1_:b2Body = §]r§.GetBody();
         var _loc2_:b2Body = §"!F§.GetBody();
         if(_loc4_ || _loc1_)
         {
            this.§#;§(§]0§,§]r§.GetShape() as b2PolygonShape,_loc1_.m_xf,§"!F§.GetShape() as b2EdgeShape,_loc2_.m_xf);
         }
      }
      
      private function §#;§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
