package § q§
{
   import §+L§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §]a§:b2Vec2;
      
      public var §0z§:Number;
      
      public var §6K§:b2Vec2;
      
      public var §@!E§:Number;
      
      public function b2Jacobian()
      {
         this.§]a§ = new b2Vec2();
         this.§6K§ = new b2Vec2();
         super();
      }
      
      public function §>!!§() : void
      {
         this.§]a§.§>!!§();
         this.§0z§ = 0;
         this.§6K§.§>!!§();
         this.§@!E§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§]a§.SetV(param1);
         this.§0z§ = param2;
         this.§6K§.SetV(param3);
         this.§@!E§ = param4;
      }
      
      public function §=1§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§]a§.x * param1.x + this.§]a§.y * param1.y + this.§0z§ * param2 + (this.§6K§.x * param3.x + this.§6K§.y * param3.y) + this.§@!E§ * param4;
      }
   }
}
