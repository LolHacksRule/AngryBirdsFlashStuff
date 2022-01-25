package §4!J§
{
   import §6V§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §@!`§:b2Vec2;
      
      public var §+!^§:Number;
      
      public var §4J§:b2Vec2;
      
      public var §;v§:Number;
      
      public function b2Jacobian()
      {
         this.§@!`§ = new b2Vec2();
         this.§4J§ = new b2Vec2();
         super();
      }
      
      public function §;@§() : void
      {
         this.§@!`§.§;@§();
         this.§+!^§ = 0;
         this.§4J§.§;@§();
         this.§;v§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§@!`§.SetV(param1);
         this.§+!^§ = param2;
         this.§4J§.SetV(param3);
         this.§;v§ = param4;
      }
      
      public function §";§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§@!`§.x * param1.x + this.§@!`§.y * param1.y + this.§+!^§ * param2 + (this.§4J§.x * param3.x + this.§4J§.y * param3.y) + this.§;v§ * param4;
      }
   }
}
