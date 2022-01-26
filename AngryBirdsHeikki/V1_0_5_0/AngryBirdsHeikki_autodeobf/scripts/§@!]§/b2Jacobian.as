package §@!]§
{
   import §,!3§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §,!^§:b2Vec2;
      
      public var §]t§:Number;
      
      public var §&4§:b2Vec2;
      
      public var §9J§:Number;
      
      public function b2Jacobian()
      {
         this.§,!^§ = new b2Vec2();
         this.§&4§ = new b2Vec2();
         super();
      }
      
      public function §#!d§() : void
      {
         this.§,!^§.§#!d§();
         this.§]t§ = 0;
         this.§&4§.§#!d§();
         this.§9J§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§,!^§.SetV(param1);
         this.§]t§ = param2;
         this.§&4§.SetV(param3);
         this.§9J§ = param4;
      }
      
      public function §39§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§,!^§.x * param1.x + this.§,!^§.y * param1.y + this.§]t§ * param2 + (this.§&4§.x * param3.x + this.§&4§.y * param3.y) + this.§9J§ * param4;
      }
   }
}
