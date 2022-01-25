package §4N§
{
   import §implements§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §9u§:b2Vec2;
      
      public var §;§:Number;
      
      public var §import§:b2Vec2;
      
      public var §`!V§:Number;
      
      public function b2Jacobian()
      {
         this.§9u§ = new b2Vec2();
         this.§import§ = new b2Vec2();
         super();
      }
      
      public function §^!&§() : void
      {
         this.§9u§.§^!&§();
         this.§;§ = 0;
         this.§import§.§^!&§();
         this.§`!V§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§9u§.SetV(param1);
         this.§;§ = param2;
         this.§import§.SetV(param3);
         this.§`!V§ = param4;
      }
      
      public function §2!§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§9u§.x * param1.x + this.§9u§.y * param1.y + this.§;§ * param2 + (this.§import§.x * param3.x + this.§import§.y * param3.y) + this.§`!V§ * param4;
      }
   }
}
