package §#A§
{
   import § !t§.b2Body;
   import § !t§.b2Fixture;
   import §#b§.b2PolygonShape;
   import §'!;§.b2Collision;
   import §?s§.b2internal;
   
   use namespace b2internal;
   
   public class b2PolygonContact extends b2Contact
   {
       
      
      public function b2PolygonContact()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §?J§(param1:*) : b2Contact
      {
         return new b2PolygonContact();
      }
      
      public static function §;!#§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §^!]§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            super.§^!]§(param1,param2);
         }
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:b2Body = b2internal::4b.GetBody();
         var _loc2_:b2Body = b2internal::"'.GetBody();
         if(_loc4_ || this)
         {
            b2Collision.§4@§(b2internal::@%,b2internal::4b.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::"'.GetShape() as b2PolygonShape,_loc2_.m_xf);
         }
      }
   }
}
