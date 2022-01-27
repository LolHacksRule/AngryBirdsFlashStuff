package §?"#§
{
   import §[!f§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §4!@§:b2Vec2;
      
      public var §?$§:Number;
      
      public var §]l§:b2Vec2;
      
      public var §7!%§:Number;
      
      public function b2Jacobian()
      {
         this.§4!@§ = new b2Vec2();
         this.§]l§ = new b2Vec2();
         super();
      }
      
      public function §]#§() : void
      {
         this.§4!@§.§]#§();
         this.§?$§ = 0;
         this.§]l§.§]#§();
         this.§7!%§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§4!@§.SetV(param1);
         this.§?$§ = param2;
         this.§]l§.SetV(param3);
         this.§7!%§ = param4;
      }
      
      public function §5G§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§4!@§.x * param1.x + this.§4!@§.y * param1.y + this.§?$§ * param2 + (this.§]l§.x * param3.x + this.§]l§.y * param3.y) + this.§7!%§ * param4;
      }
   }
}
