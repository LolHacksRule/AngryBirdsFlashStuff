package §[!8§
{
   import §0!G§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §<%§:b2Vec2;
      
      public var §@<§:Number;
      
      public var §#'§:b2Vec2;
      
      public var §&!O§:Number;
      
      public function b2Jacobian()
      {
         this.§<%§ = new b2Vec2();
         this.§#'§ = new b2Vec2();
         super();
      }
      
      public function §3a§() : void
      {
         this.§<%§.§3a§();
         this.§@<§ = 0;
         this.§#'§.§3a§();
         this.§&!O§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§<%§.SetV(param1);
         this.§@<§ = param2;
         this.§#'§.SetV(param3);
         this.§&!O§ = param4;
      }
      
      public function §,I§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§<%§.x * param1.x + this.§<%§.y * param1.y + this.§@<§ * param2 + (this.§#'§.x * param3.x + this.§#'§.y * param3.y) + this.§&!O§ * param4;
      }
   }
}
