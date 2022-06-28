package §%t§
{
   import §&L§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var § !D§:b2Vec2;
      
      public var §]#§:Number;
      
      public var §!O§:b2Vec2;
      
      public var §'!e§:Number;
      
      public function b2Jacobian()
      {
         this.§ !D§ = new b2Vec2();
         this.§!O§ = new b2Vec2();
         super();
      }
      
      public function §5b§() : void
      {
         this.§ !D§.§5b§();
         this.§]#§ = 0;
         this.§!O§.§5b§();
         this.§'!e§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§ !D§.SetV(param1);
         this.§]#§ = param2;
         this.§!O§.SetV(param3);
         this.§'!e§ = param4;
      }
      
      public function §3!$§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§ !D§.x * param1.x + this.§ !D§.y * param1.y + this.§]#§ * param2 + (this.§!O§.x * param3.x + this.§!O§.y * param3.y) + this.§'!e§ * param4;
      }
   }
}
