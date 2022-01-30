package §[h§
{
   import §<!B§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var § !§:b2Vec2;
      
      public var §9!+§:Number;
      
      public var §<!&§:b2Vec2;
      
      public var §!!M§:Number;
      
      public function b2Jacobian()
      {
         this.§ !§ = new b2Vec2();
         this.§<!&§ = new b2Vec2();
         super();
      }
      
      public function §22§() : void
      {
         this.§ !§.§22§();
         this.§9!+§ = 0;
         this.§<!&§.§22§();
         this.§!!M§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§ !§.SetV(param1);
         this.§9!+§ = param2;
         this.§<!&§.SetV(param3);
         this.§!!M§ = param4;
      }
      
      public function §7!P§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§ !§.x * param1.x + this.§ !§.y * param1.y + this.§9!+§ * param2 + (this.§<!&§.x * param3.x + this.§<!&§.y * param3.y) + this.§!!M§ * param4;
      }
   }
}
