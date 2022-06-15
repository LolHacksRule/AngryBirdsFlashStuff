package §1#]§
{
   import §!H§.b2CircleShape;
   import §!H§.b2PolygonShape;
   import §!H§.b2Shape;
   import §4$E§.b2Collision;
   import §?N§.b2Settings;
   import §?N§.b2internal;
   import §@!S§.b2Body;
   import §@!S§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2PolyAndCircleContact extends b2Contact
   {
       
      
      public function b2PolyAndCircleContact()
      {
         super();
      }
      
      public static function §,"h§(param1:*) : b2Contact
      {
         return new b2PolyAndCircleContact();
      }
      
      public static function §;"@§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §!!C§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§!!C§(param1,param2);
         b2Settings.b2Assert(param1.§8!p§() == b2Shape.§?6§);
         b2Settings.b2Assert(param2.§8!p§() == b2Shape.§"$E§);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::-!-.m_body;
         var _loc2_:b2Body = b2internal::^y.m_body;
         b2Collision.§]v§(b2internal::^#t,b2internal::-!-.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::^y.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
