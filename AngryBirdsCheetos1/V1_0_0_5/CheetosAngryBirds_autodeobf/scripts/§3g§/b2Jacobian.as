package §3g§
{
   import §=E§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §4k§:b2Vec2;
      
      public var §7!Q§:Number;
      
      public var §!U§:b2Vec2;
      
      public var §>!J§:Number;
      
      public function b2Jacobian()
      {
         this.§4k§ = new b2Vec2();
         this.§!U§ = new b2Vec2();
         super();
      }
      
      public function §^!#§() : void
      {
         this.§4k§.§^!#§();
         this.§7!Q§ = 0;
         this.§!U§.§^!#§();
         this.§>!J§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§4k§.SetV(param1);
         this.§7!Q§ = param2;
         this.§!U§.SetV(param3);
         this.§>!J§ = param4;
      }
      
      public function §0!§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§4k§.x * param1.x + this.§4k§.y * param1.y + this.§7!Q§ * param2 + (this.§!U§.x * param3.x + this.§!U§.y * param3.y) + this.§>!J§ * param4;
      }
   }
}
