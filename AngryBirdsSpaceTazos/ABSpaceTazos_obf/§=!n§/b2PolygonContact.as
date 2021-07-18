package §=!n§
{
   import §'!&§.b2Body;
   import §'!&§.b2Fixture;
   import §,Z§.b2PolygonShape;
   import §3c§.b2Collision;
   import §@!'§.b2internal;
   
   use namespace b2internal;
   
   public class b2PolygonContact extends b2Contact
   {
       
      
      public function b2PolygonContact()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
         }
      }
      
      public static function §]H§(param1:*) : b2Contact
      {
         return new b2PolygonContact();
      }
      
      public static function §^!a§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §`"<§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super.§`"<§(param1,param2);
         }
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:b2Body = b2internal::;"B.GetBody();
         var _loc2_:b2Body = b2internal::8q.GetBody();
         if(_loc4_)
         {
            b2Collision.§>B§(b2internal::8!?,b2internal::;"B.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::8q.GetShape() as b2PolygonShape,_loc2_.m_xf);
         }
      }
   }
}
