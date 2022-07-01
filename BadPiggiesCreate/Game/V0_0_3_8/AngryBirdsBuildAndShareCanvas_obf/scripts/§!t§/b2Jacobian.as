package §!t§
{
   import §9v§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §`s§:b2Vec2;
      
      public var §@4§:Number;
      
      public var §1!S§:b2Vec2;
      
      public var §^v§:Number;
      
      public function b2Jacobian()
      {
         this.§`s§ = new b2Vec2();
         this.§1!S§ = new b2Vec2();
         super();
      }
      
      public function §6V§() : void
      {
         this.§`s§.§6V§();
         this.§@4§ = 0;
         this.§1!S§.§6V§();
         this.§^v§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§`s§.SetV(param1);
         this.§@4§ = param2;
         this.§1!S§.SetV(param3);
         this.§^v§ = param4;
      }
      
      public function §?!D§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§`s§.x * param1.x + this.§`s§.y * param1.y + this.§@4§ * param2 + (this.§1!S§.x * param3.x + this.§1!S§.y * param3.y) + this.§^v§ * param4;
      }
   }
}
