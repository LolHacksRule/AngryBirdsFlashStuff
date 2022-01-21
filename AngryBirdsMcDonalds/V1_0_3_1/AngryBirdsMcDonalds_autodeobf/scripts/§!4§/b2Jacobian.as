package §!4§
{
   import §0,§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §6!P§:b2Vec2;
      
      public var §"!,§:Number;
      
      public var §0=§:b2Vec2;
      
      public var §]0§:Number;
      
      public function b2Jacobian()
      {
         this.§6!P§ = new b2Vec2();
         this.§0=§ = new b2Vec2();
         super();
      }
      
      public function § !b§() : void
      {
         this.§6!P§.§ !b§();
         this.§"!,§ = 0;
         this.§0=§.§ !b§();
         this.§]0§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§6!P§.SetV(param1);
         this.§"!,§ = param2;
         this.§0=§.SetV(param3);
         this.§]0§ = param4;
      }
      
      public function §>@§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§6!P§.x * param1.x + this.§6!P§.y * param1.y + this.§"!,§ * param2 + (this.§0=§.x * param3.x + this.§0=§.y * param3.y) + this.§]0§ * param4;
      }
   }
}
