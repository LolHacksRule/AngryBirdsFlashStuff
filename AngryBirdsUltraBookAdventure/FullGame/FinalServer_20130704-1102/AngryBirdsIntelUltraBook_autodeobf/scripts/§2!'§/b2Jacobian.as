package §2!'§
{
   import §&H§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §,!]§:b2Vec2;
      
      public var §[!p§:Number;
      
      public var §"S§:b2Vec2;
      
      public var §5!<§:Number;
      
      public function b2Jacobian()
      {
         this.§,!]§ = new b2Vec2();
         this.§"S§ = new b2Vec2();
         super();
      }
      
      public function §+J§() : void
      {
         this.§,!]§.§+J§();
         this.§[!p§ = 0;
         this.§"S§.§+J§();
         this.§5!<§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§,!]§.SetV(param1);
         this.§[!p§ = param2;
         this.§"S§.SetV(param3);
         this.§5!<§ = param4;
      }
      
      public function §]l§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§,!]§.x * param1.x + this.§,!]§.y * param1.y + this.§[!p§ * param2 + (this.§"S§.x * param3.x + this.§"S§.y * param3.y) + this.§5!<§ * param4;
      }
   }
}
