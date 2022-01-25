package §#!K§
{
   import §^!%§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §3S§:b2Vec2;
      
      public var §<`§:Number;
      
      public var §4A§:b2Vec2;
      
      public var §^!L§:Number;
      
      public function b2Jacobian()
      {
         this.§3S§ = new b2Vec2();
         this.§4A§ = new b2Vec2();
         super();
      }
      
      public function §4[§() : void
      {
         this.§3S§.§4[§();
         this.§<`§ = 0;
         this.§4A§.§4[§();
         this.§^!L§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§3S§.SetV(param1);
         this.§<`§ = param2;
         this.§4A§.SetV(param3);
         this.§^!L§ = param4;
      }
      
      public function §9!6§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§3S§.x * param1.x + this.§3S§.y * param1.y + this.§<`§ * param2 + (this.§4A§.x * param3.x + this.§4A§.y * param3.y) + this.§^!L§ * param4;
      }
   }
}
