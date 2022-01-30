package §^!2§
{
   import §?!h§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §;!+§:b2Vec2;
      
      public var §;!y§:Number;
      
      public var §3!z§:b2Vec2;
      
      public var §3!&§:Number;
      
      public function b2Jacobian()
      {
         this.§;!+§ = new b2Vec2();
         this.§3!z§ = new b2Vec2();
         super();
      }
      
      public function §+Z§() : void
      {
         this.§;!+§.§+Z§();
         this.§;!y§ = 0;
         this.§3!z§.§+Z§();
         this.§3!&§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§;!+§.SetV(param1);
         this.§;!y§ = param2;
         this.§3!z§.SetV(param3);
         this.§3!&§ = param4;
      }
      
      public function §9"$§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§;!+§.x * param1.x + this.§;!+§.y * param1.y + this.§;!y§ * param2 + (this.§3!z§.x * param3.x + this.§3!z§.y * param3.y) + this.§3!&§ * param4;
      }
   }
}
