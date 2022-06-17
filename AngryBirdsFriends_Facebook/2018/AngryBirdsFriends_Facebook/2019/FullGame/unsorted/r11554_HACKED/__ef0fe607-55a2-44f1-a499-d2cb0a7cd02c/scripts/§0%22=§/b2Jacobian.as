package §0"=§
{
   import §`# §.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §5!z§:b2Vec2;
      
      public var §;#H§:Number;
      
      public var §>!_§:b2Vec2;
      
      public var §+!s§:Number;
      
      public function b2Jacobian()
      {
         this.§5!z§ = new b2Vec2();
         this.§>!_§ = new b2Vec2();
         super();
      }
      
      public function §5J§() : void
      {
         this.§5!z§.§5J§();
         this.§;#H§ = 0;
         this.§>!_§.§5J§();
         this.§+!s§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§5!z§.SetV(param1);
         this.§;#H§ = param2;
         this.§>!_§.SetV(param3);
         this.§+!s§ = param4;
      }
      
      public function §7$-§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§5!z§.x * param1.x + this.§5!z§.y * param1.y + this.§;#H§ * param2 + (this.§>!_§.x * param3.x + this.§>!_§.y * param3.y) + this.§+!s§ * param4;
      }
   }
}
