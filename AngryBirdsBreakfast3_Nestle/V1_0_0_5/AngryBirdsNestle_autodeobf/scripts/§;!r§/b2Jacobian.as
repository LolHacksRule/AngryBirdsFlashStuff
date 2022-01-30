package §;!r§
{
   import §-!A§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var § a§:b2Vec2;
      
      public var §'l§:Number;
      
      public var §1u§:b2Vec2;
      
      public var §>p§:Number;
      
      public function b2Jacobian()
      {
         this.§ a§ = new b2Vec2();
         this.§1u§ = new b2Vec2();
         super();
      }
      
      public function §9N§() : void
      {
         this.§ a§.§9N§();
         this.§'l§ = 0;
         this.§1u§.§9N§();
         this.§>p§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§ a§.SetV(param1);
         this.§'l§ = param2;
         this.§1u§.SetV(param3);
         this.§>p§ = param4;
      }
      
      public function §16§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§ a§.x * param1.x + this.§ a§.y * param1.y + this.§'l§ * param2 + (this.§1u§.x * param3.x + this.§1u§.y * param3.y) + this.§>p§ * param4;
      }
   }
}
