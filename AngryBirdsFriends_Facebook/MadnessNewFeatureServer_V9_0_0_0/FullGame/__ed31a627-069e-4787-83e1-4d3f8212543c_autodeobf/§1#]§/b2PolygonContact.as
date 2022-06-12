package §1#]§
{
   import §!H§.b2PolygonShape;
   import §4$E§.b2Collision;
   import §?N§.b2internal;
   import §@!S§.b2Body;
   import §@!S§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2PolygonContact extends b2Contact
   {
       
      
      public function b2PolygonContact()
      {
         super();
      }
      
      public static function §,"h§(param1:*) : b2Contact
      {
         return new b2PolygonContact();
      }
      
      public static function §;"@§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §!!C§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§!!C§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::-!-.GetBody();
         var _loc2_:b2Body = b2internal::^y.GetBody();
         b2Collision.§2$@§(b2internal::^#t,b2internal::-!-.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::^y.GetShape() as b2PolygonShape,_loc2_.m_xf);
      }
   }
}
