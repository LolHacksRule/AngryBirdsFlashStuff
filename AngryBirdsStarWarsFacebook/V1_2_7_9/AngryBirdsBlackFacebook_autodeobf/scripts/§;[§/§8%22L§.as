package §;[§
{
   import §1x§.b2Body;
   import §^>§.b2Vec2;
   
   public class §8"L§
   {
       
      
      private var §-"z§:b2Body;
      
      private var §%"&§:b2Vec2;
      
      private var §3Z§:b2Vec2;
      
      private var §1]§:Number;
      
      public function §8"L§(param1:b2Body, param2:b2Vec2, param3:b2Vec2, param4:Number)
      {
         super();
         this.§-"z§ = param1;
         this.§%"&§ = param2;
         this.§3Z§ = param3;
         this.§1]§ = param4;
      }
      
      public function get body() : b2Body
      {
         return this.§-"z§;
      }
      
      public function get collisionPoint() : b2Vec2
      {
         return this.§%"&§;
      }
      
      public function get normal() : b2Vec2
      {
         return this.§3Z§;
      }
      
      public function get fraction() : Number
      {
         return this.§1]§;
      }
   }
}
