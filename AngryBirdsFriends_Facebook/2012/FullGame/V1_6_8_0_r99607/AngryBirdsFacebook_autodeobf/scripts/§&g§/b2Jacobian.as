package §&g§
{
   import §!"8§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §,t§:b2Vec2;
      
      public var §>!0§:Number;
      
      public var §1!,§:b2Vec2;
      
      public var §3@§:Number;
      
      public function b2Jacobian()
      {
         this.§,t§ = new b2Vec2();
         this.§1!,§ = new b2Vec2();
         super();
      }
      
      public function §]!;§() : void
      {
         this.§,t§.§]!;§();
         this.§>!0§ = 0;
         this.§1!,§.§]!;§();
         this.§3@§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§,t§.SetV(param1);
         this.§>!0§ = param2;
         this.§1!,§.SetV(param3);
         this.§3@§ = param4;
      }
      
      public function §;<§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§,t§.x * param1.x + this.§,t§.y * param1.y + this.§>!0§ * param2 + (this.§1!,§.x * param3.x + this.§1!,§.y * param3.y) + this.§3@§ * param4;
      }
   }
}
