package §!"b§
{
   import §04§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §1#e§:b2Vec2;
      
      public var §7l§:Number;
      
      public var §9#E§:b2Vec2;
      
      public var § "K§:Number;
      
      public function b2Jacobian()
      {
         this.§1#e§ = new b2Vec2();
         this.§9#E§ = new b2Vec2();
         super();
      }
      
      public function §3-§() : void
      {
         this.§1#e§.§3-§();
         this.§7l§ = 0;
         this.§9#E§.§3-§();
         this.§ "K§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§1#e§.SetV(param1);
         this.§7l§ = param2;
         this.§9#E§.SetV(param3);
         this.§ "K§ = param4;
      }
      
      public function §=L§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§1#e§.x * param1.x + this.§1#e§.y * param1.y + this.§7l§ * param2 + (this.§9#E§.x * param3.x + this.§9#E§.y * param3.y) + this.§ "K§ * param4;
      }
   }
}
