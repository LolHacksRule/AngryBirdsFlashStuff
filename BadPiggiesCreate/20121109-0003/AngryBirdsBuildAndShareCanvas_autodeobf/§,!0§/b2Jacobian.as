package §,!0§
{
   import §<!a§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §4!J§:b2Vec2;
      
      public var §2!j§:Number;
      
      public var §>!p§:b2Vec2;
      
      public var §=!m§:Number;
      
      public function b2Jacobian()
      {
         this.§4!J§ = new b2Vec2();
         this.§>!p§ = new b2Vec2();
         super();
      }
      
      public function §?b§() : void
      {
         this.§4!J§.§?b§();
         this.§2!j§ = 0;
         this.§>!p§.§?b§();
         this.§=!m§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§4!J§.SetV(param1);
         this.§2!j§ = param2;
         this.§>!p§.SetV(param3);
         this.§=!m§ = param4;
      }
      
      public function §14§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§4!J§.x * param1.x + this.§4!J§.y * param1.y + this.§2!j§ * param2 + (this.§>!p§.x * param3.x + this.§>!p§.y * param3.y) + this.§=!m§ * param4;
      }
   }
}
