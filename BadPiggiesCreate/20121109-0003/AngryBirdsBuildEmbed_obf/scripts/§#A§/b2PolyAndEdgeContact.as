package §#A§
{
   import § !t§.b2Body;
   import § !t§.b2Fixture;
   import §#b§.b2EdgeShape;
   import §#b§.b2PolygonShape;
   import §#b§.b2Shape;
   import §'!;§.b2Manifold;
   import §<!B§.b2Transform;
   import §?s§.b2Settings;
   import §?s§.b2internal;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
       
      
      public function b2PolyAndEdgeContact()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      public static function §?J§(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function §;!#§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §^!]§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            super.§^!]§(param1,param2);
            if(_loc3_ || param2)
            {
               §§goto(addr54);
            }
            §§goto(addr63);
         }
         addr54:
         b2Settings.b2Assert(param1.§"!j§() == b2Shape.§>>§);
         if(!_loc4_)
         {
            addr63:
            b2Settings.b2Assert(param2.§"!j§() == b2Shape.§<5§);
         }
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:b2Body = b2internal::4b.GetBody();
         var _loc2_:b2Body = b2internal::"'.GetBody();
         if(_loc3_ || _loc2_)
         {
            this.§,p§(b2internal::@%,b2internal::4b.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::"'.GetShape() as b2EdgeShape,_loc2_.m_xf);
         }
      }
      
      private function §,p§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}
