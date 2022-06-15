package §8k§
{
   import §#]§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §+"'§:b2Vec2;
      
      public var §&L§:Number;
      
      public var §`O§:b2Vec2;
      
      public var §package§:Number;
      
      public function b2Jacobian()
      {
         this.§+"'§ = new b2Vec2();
         this.§`O§ = new b2Vec2();
         super();
      }
      
      public function §;v§() : void
      {
         this.§+"'§.§;v§();
         this.§&L§ = 0;
         this.§`O§.§;v§();
         this.§package§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§+"'§.SetV(param1);
         this.§&L§ = param2;
         this.§`O§.SetV(param3);
         this.§package§ = param4;
      }
      
      public function §,u§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§+"'§.x * param1.x + this.§+"'§.y * param1.y + this.§&L§ * param2 + (this.§`O§.x * param3.x + this.§`O§.y * param3.y) + this.§package§ * param4;
      }
   }
}
