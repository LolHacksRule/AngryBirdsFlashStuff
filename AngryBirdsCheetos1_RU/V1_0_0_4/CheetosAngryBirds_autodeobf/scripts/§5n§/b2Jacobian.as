package §5n§
{
   import §5!K§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §];§:b2Vec2;
      
      public var §8O§:Number;
      
      public var §0!S§:b2Vec2;
      
      public var §9-§:Number;
      
      public function b2Jacobian()
      {
         this.§];§ = new b2Vec2();
         this.§0!S§ = new b2Vec2();
         super();
      }
      
      public function §6d§() : void
      {
         this.§];§.§6d§();
         this.§8O§ = 0;
         this.§0!S§.§6d§();
         this.§9-§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§];§.SetV(param1);
         this.§8O§ = param2;
         this.§0!S§.SetV(param3);
         this.§9-§ = param4;
      }
      
      public function §7!;§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§];§.x * param1.x + this.§];§.y * param1.y + this.§8O§ * param2 + (this.§0!S§.x * param3.x + this.§0!S§.y * param3.y) + this.§9-§ * param4;
      }
   }
}
