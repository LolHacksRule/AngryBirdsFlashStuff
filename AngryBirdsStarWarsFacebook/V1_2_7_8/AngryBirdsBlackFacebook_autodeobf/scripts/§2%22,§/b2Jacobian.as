package §2",§
{
   import §^>§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §3Y§:b2Vec2;
      
      public var §0!e§:Number;
      
      public var §8"Q§:b2Vec2;
      
      public var §]"Z§:Number;
      
      public function b2Jacobian()
      {
         this.§3Y§ = new b2Vec2();
         this.§8"Q§ = new b2Vec2();
         super();
      }
      
      public function §@e§() : void
      {
         this.§3Y§.§@e§();
         this.§0!e§ = 0;
         this.§8"Q§.§@e§();
         this.§]"Z§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§3Y§.SetV(param1);
         this.§0!e§ = param2;
         this.§8"Q§.SetV(param3);
         this.§]"Z§ = param4;
      }
      
      public function §>"H§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§3Y§.x * param1.x + this.§3Y§.y * param1.y + this.§0!e§ * param2 + (this.§8"Q§.x * param3.x + this.§8"Q§.y * param3.y) + this.§]"Z§ * param4;
      }
   }
}
