package §!D§
{
   import §4!!§.b2internal;
   import §48§.b2Body;
   import §48§.b2Fixture;
   import §55§.b2Collision;
   import §<!`§.b2PolygonShape;
   
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
      
      public static function §?!Q§(param1:*) : b2Contact
      {
         return new b2PolygonContact();
      }
      
      public static function §'S§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §<t§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super.§<t§(param1,param2);
         }
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:b2Body = b2internal::3t.GetBody();
         var _loc2_:b2Body = b2internal::?!p.GetBody();
         if(!_loc4_)
         {
            b2Collision.§]!1§(b2internal::@! ,b2internal::3t.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::?!p.GetShape() as b2PolygonShape,_loc2_.m_xf);
         }
      }
   }
}
