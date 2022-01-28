package § !V§
{
   import §2"=§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §[`§:b2Vec2;
      
      public var §"!K§:Number;
      
      public var §<!4§:b2Vec2;
      
      public var §?!G§:Number;
      
      public function b2Jacobian()
      {
         this.§[`§ = new b2Vec2();
         this.§<!4§ = new b2Vec2();
         super();
      }
      
      public function §@!s§() : void
      {
         this.§[`§.§@!s§();
         this.§"!K§ = 0;
         this.§<!4§.§@!s§();
         this.§?!G§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§[`§.SetV(param1);
         this.§"!K§ = param2;
         this.§<!4§.SetV(param3);
         this.§?!G§ = param4;
      }
      
      public function §6!C§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§[`§.x * param1.x + this.§[`§.y * param1.y + this.§"!K§ * param2 + (this.§<!4§.x * param3.x + this.§<!4§.y * param3.y) + this.§?!G§ * param4;
      }
   }
}
