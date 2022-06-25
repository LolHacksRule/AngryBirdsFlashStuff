package §7a§
{
   import § D§.b2Body;
   import § D§.b2Fixture;
   import §&!-§.b2Collision;
   import §0!'§.b2PolygonShape;
   import §;u§.b2internal;
   
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
      
      public static function §5=§(param1:*) : b2Contact
      {
         return new b2PolygonContact();
      }
      
      public static function §"L§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §#[§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            super.§#[§(param1,param2);
         }
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:b2Body = b2internal::48.GetBody();
         var _loc2_:b2Body = b2internal::[=.GetBody();
         if(_loc3_ || _loc1_)
         {
            b2Collision.§4!0§(b2internal::?K,b2internal::48.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::[=.GetShape() as b2PolygonShape,_loc2_.m_xf);
         }
      }
   }
}
