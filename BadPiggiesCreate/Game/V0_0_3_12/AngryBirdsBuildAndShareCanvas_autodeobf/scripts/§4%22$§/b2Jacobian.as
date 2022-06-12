package §4"$§
{
   import §3!t§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §!!]§:b2Vec2;
      
      public var §=p§:Number;
      
      public var § !x§:b2Vec2;
      
      public var §4R§:Number;
      
      public function b2Jacobian()
      {
         this.§!!]§ = new b2Vec2();
         this.§ !x§ = new b2Vec2();
         super();
      }
      
      public function § 4§() : void
      {
         this.§!!]§.§ 4§();
         this.§=p§ = 0;
         this.§ !x§.§ 4§();
         this.§4R§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§!!]§.SetV(param1);
         this.§=p§ = param2;
         this.§ !x§.SetV(param3);
         this.§4R§ = param4;
      }
      
      public function §&f§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§!!]§.x * param1.x + this.§!!]§.y * param1.y + this.§=p§ * param2 + (this.§ !x§.x * param3.x + this.§ !x§.y * param3.y) + this.§4R§ * param4;
      }
   }
}
