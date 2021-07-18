package §+C§
{
   import §6Z§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var § X§:b2Vec2;
      
      public var §>d§:Number;
      
      public var §&!K§:b2Vec2;
      
      public var § w§:Number;
      
      public function b2Jacobian()
      {
         this.§ X§ = new b2Vec2();
         this.§&!K§ = new b2Vec2();
         super();
      }
      
      public function §5!H§() : void
      {
         this.§ X§.§5!H§();
         this.§>d§ = 0;
         this.§&!K§.§5!H§();
         this.§ w§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§ X§.SetV(param1);
         this.§>d§ = param2;
         this.§&!K§.SetV(param3);
         this.§ w§ = param4;
      }
      
      public function §7_§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§ X§.x * param1.x + this.§ X§.y * param1.y + this.§>d§ * param2 + (this.§&!K§.x * param3.x + this.§&!K§.y * param3.y) + this.§ w§ * param4;
      }
   }
}
