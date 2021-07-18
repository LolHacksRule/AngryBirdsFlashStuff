package §#A§
{
   import § !t§.b2Body;
   import § !t§.b2Fixture;
   import §#b§.b2CircleShape;
   import §#b§.b2PolygonShape;
   import §#b§.b2Shape;
   import §'!;§.b2Collision;
   import §?s§.b2Settings;
   import §?s§.b2internal;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §?J§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §;!#§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §^!]§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super.§^!]§(param1,param2);
            if(_loc4_ || _loc3_)
            {
               b2Settings.b2Assert(param1.§"!j§() == b2Shape.§>>§);
               if(_loc3_ && this)
               {
               }
               §§goto(addr71);
            }
            b2Settings.b2Assert(param2.§"!j§() == b2Shape.§@!>§);
         }
         addr71:
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:b2Body = b2internal::4b.m_body;
         var _loc2_:b2Body = b2internal::"'.m_body;
         if(!(_loc4_ && _loc1_))
         {
            b2Collision.§2!4§(b2internal::@%,b2internal::4b.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::"'.GetShape() as b2CircleShape,_loc2_.m_xf);
         }
      }
   }
}
