package §@!O§
{
   import §0m§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §2"Y§:b2Vec2;
      
      public var §-!%§:Number;
      
      public var §5!5§:b2Vec2;
      
      public var §,$ §:Number;
      
      public function b2Jacobian()
      {
         this.§2"Y§ = new b2Vec2();
         this.§5!5§ = new b2Vec2();
         super();
      }
      
      public function §,[§() : void
      {
         this.§2"Y§.§,[§();
         this.§-!%§ = 0;
         this.§5!5§.§,[§();
         this.§,$ § = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§2"Y§.SetV(param1);
         this.§-!%§ = param2;
         this.§5!5§.SetV(param3);
         this.§,$ § = param4;
      }
      
      public function §4#U§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§2"Y§.x * param1.x + this.§2"Y§.y * param1.y + this.§-!%§ * param2 + (this.§5!5§.x * param3.x + this.§5!5§.y * param3.y) + this.§,$ § * param4;
      }
   }
}
