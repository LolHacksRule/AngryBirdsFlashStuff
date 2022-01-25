package §0b§
{
   import § y§.b2Body;
   import § y§.b2Fixture;
   import §!u§.b2Collision;
   import §54§.b2internal;
   import §]!7§.b2CircleShape;
   
   use namespace b2internal;
   
   public class b2CircleContact extends b2Contact
   {
       
      
      public function b2CircleContact()
      {
         super();
      }
      
      public static function §`Q§(param1:*) : b2Contact
      {
         return new b2CircleContact();
      }
      
      public static function §5!,§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §+!K§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§+!K§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::31.GetBody();
         var _loc2_:b2Body = b2internal::`>.GetBody();
         b2Collision.§<!a§(b2internal::=!c,b2internal::31.GetShape() as b2CircleShape,_loc1_.m_xf,b2internal::`>.GetShape() as b2CircleShape,_loc2_.m_xf);
      }
   }
}
