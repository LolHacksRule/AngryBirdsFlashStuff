package §6>§
{
   import §=i§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §#y§:b2Vec2;
      
      public var §,2§:Number;
      
      public var §8!?§:b2Vec2;
      
      public var §#!D§:Number;
      
      public function b2Jacobian()
      {
         this.§#y§ = new b2Vec2();
         this.§8!?§ = new b2Vec2();
         super();
      }
      
      public function §0!=§() : void
      {
         this.§#y§.§0!=§();
         this.§,2§ = 0;
         this.§8!?§.§0!=§();
         this.§#!D§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§#y§.SetV(param1);
         this.§,2§ = param2;
         this.§8!?§.SetV(param3);
         this.§#!D§ = param4;
      }
      
      public function §=!'§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§#y§.x * param1.x + this.§#y§.y * param1.y + this.§,2§ * param2 + (this.§8!?§.x * param3.x + this.§8!?§.y * param3.y) + this.§#!D§ * param4;
      }
   }
}
