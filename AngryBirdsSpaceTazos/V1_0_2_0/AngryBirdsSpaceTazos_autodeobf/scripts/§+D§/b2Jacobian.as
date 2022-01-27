package §+D§
{
   import §&!S§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §,,§:b2Vec2;
      
      public var §;!B§:Number;
      
      public var §19§:b2Vec2;
      
      public var §<!+§:Number;
      
      public function b2Jacobian()
      {
         this.§,,§ = new b2Vec2();
         this.§19§ = new b2Vec2();
         super();
      }
      
      public function § "2§() : void
      {
         this.§,,§.§ "2§();
         this.§;!B§ = 0;
         this.§19§.§ "2§();
         this.§<!+§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§,,§.SetV(param1);
         this.§;!B§ = param2;
         this.§19§.SetV(param3);
         this.§<!+§ = param4;
      }
      
      public function §0k§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§,,§.x * param1.x + this.§,,§.y * param1.y + this.§;!B§ * param2 + (this.§19§.x * param3.x + this.§19§.y * param3.y) + this.§<!+§ * param4;
      }
   }
}
