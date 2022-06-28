package §&a§
{
   import §;%§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §1E§:b2Vec2;
      
      public var §5!a§:Number;
      
      public var §2>§:b2Vec2;
      
      public var §,$§:Number;
      
      public function b2Jacobian()
      {
         this.§1E§ = new b2Vec2();
         this.§2>§ = new b2Vec2();
         super();
      }
      
      public function §&!K§() : void
      {
         this.§1E§.§&!K§();
         this.§5!a§ = 0;
         this.§2>§.§&!K§();
         this.§,$§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§1E§.SetV(param1);
         this.§5!a§ = param2;
         this.§2>§.SetV(param3);
         this.§,$§ = param4;
      }
      
      public function §2!<§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§1E§.x * param1.x + this.§1E§.y * param1.y + this.§5!a§ * param2 + (this.§2>§.x * param3.x + this.§2>§.y * param3.y) + this.§,$§ * param4;
      }
   }
}
