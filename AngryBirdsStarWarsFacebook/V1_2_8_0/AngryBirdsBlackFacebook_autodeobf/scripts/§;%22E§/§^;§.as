package §;"E§
{
   import §7"A§.b2Vec2;
   import §>"_§.b2Body;
   
   public class §^;§
   {
       
      
      private var §"!S§:b2Body;
      
      private var §"!$§:b2Vec2;
      
      private var §=Y§:b2Vec2;
      
      private var §+F§:Number;
      
      public function §^;§(param1:b2Body, param2:b2Vec2, param3:b2Vec2, param4:Number)
      {
         super();
         this.§"!S§ = param1;
         this.§"!$§ = param2;
         this.§=Y§ = param3;
         this.§+F§ = param4;
      }
      
      public function get body() : b2Body
      {
         return this.§"!S§;
      }
      
      public function get collisionPoint() : b2Vec2
      {
         return this.§"!$§;
      }
      
      public function get normal() : b2Vec2
      {
         return this.§=Y§;
      }
      
      public function get fraction() : Number
      {
         return this.§+F§;
      }
   }
}
