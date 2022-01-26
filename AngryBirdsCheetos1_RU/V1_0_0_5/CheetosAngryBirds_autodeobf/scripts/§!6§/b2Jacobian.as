package §!6§
{
   import §+,§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §@V§:b2Vec2;
      
      public var §!!B§:Number;
      
      public var §1§:b2Vec2;
      
      public var § t§:Number;
      
      public function b2Jacobian()
      {
         this.§@V§ = new b2Vec2();
         this.§1§ = new b2Vec2();
         super();
      }
      
      public function §&N§() : void
      {
         this.§@V§.§&N§();
         this.§!!B§ = 0;
         this.§1§.§&N§();
         this.§ t§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§@V§.SetV(param1);
         this.§!!B§ = param2;
         this.§1§.SetV(param3);
         this.§ t§ = param4;
      }
      
      public function §^!>§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§@V§.x * param1.x + this.§@V§.y * param1.y + this.§!!B§ * param2 + (this.§1§.x * param3.x + this.§1§.y * param3.y) + this.§ t§ * param4;
      }
   }
}
