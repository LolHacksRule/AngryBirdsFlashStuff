package §!!M§
{
   import §+S§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var include:b2Vec2;
      
      public var §4B§:Number;
      
      public var §=]§:b2Vec2;
      
      public var § D§:Number;
      
      public function b2Jacobian()
      {
         this.include = new b2Vec2();
         this.§=]§ = new b2Vec2();
         super();
      }
      
      public function §%^§() : void
      {
         this.include.§%^§();
         this.§4B§ = 0;
         this.§=]§.§%^§();
         this.§ D§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.include.SetV(param1);
         this.§4B§ = param2;
         this.§=]§.SetV(param3);
         this.§ D§ = param4;
      }
      
      public function §]`§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.include.x * param1.x + this.include.y * param1.y + this.§4B§ * param2 + (this.§=]§.x * param3.x + this.§=]§.y * param3.y) + this.§ D§ * param4;
      }
   }
}
