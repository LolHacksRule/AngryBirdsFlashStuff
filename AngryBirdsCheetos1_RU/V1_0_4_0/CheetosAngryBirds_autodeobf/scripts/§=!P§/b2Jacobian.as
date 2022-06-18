package §=!P§
{
   import §^q§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §[!S§:b2Vec2;
      
      public var §4m§:Number;
      
      public var §break§:b2Vec2;
      
      public var §>!;§:Number;
      
      public function b2Jacobian()
      {
         this.§[!S§ = new b2Vec2();
         this.§break§ = new b2Vec2();
         super();
      }
      
      public function §0q§() : void
      {
         this.§[!S§.§0q§();
         this.§4m§ = 0;
         this.§break§.§0q§();
         this.§>!;§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§[!S§.SetV(param1);
         this.§4m§ = param2;
         this.§break§.SetV(param3);
         this.§>!;§ = param4;
      }
      
      public function §&-§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§[!S§.x * param1.x + this.§[!S§.y * param1.y + this.§4m§ * param2 + (this.§break§.x * param3.x + this.§break§.y * param3.y) + this.§>!;§ * param4;
      }
   }
}
