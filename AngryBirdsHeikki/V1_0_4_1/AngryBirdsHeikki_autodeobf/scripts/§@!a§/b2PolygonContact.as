package §@!a§
{
   import §+!b§.b2PolygonShape;
   import §4x§.b2internal;
   import §8!I§.b2Body;
   import §8!I§.b2Fixture;
   import §<"§.b2Collision;
   
   use namespace b2internal;
   
   public class b2PolygonContact extends b2Contact
   {
       
      
      public function b2PolygonContact()
      {
         super();
      }
      
      public static function § `§(param1:*) : b2Contact
      {
         return new b2PolygonContact();
      }
      
      public static function §%!`§(param1:b2Contact, param2:*) : void
      {
      }
      
      public function §5!9§(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.§5!9§(param1,param2);
      }
      
      override b2internal function Evaluate() : void
      {
         var _loc1_:b2Body = b2internal::]![.GetBody();
         var _loc2_:b2Body = b2internal::11.GetBody();
         b2Collision.§5!b§(b2internal::=!=,b2internal::]![.GetShape() as b2PolygonShape,_loc1_.m_xf,b2internal::11.GetShape() as b2PolygonShape,_loc2_.m_xf);
      }
   }
}
