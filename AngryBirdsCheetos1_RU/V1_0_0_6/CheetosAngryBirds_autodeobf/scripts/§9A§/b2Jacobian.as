package §9A§
{
   import §3q§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §,q§:b2Vec2;
      
      public var §'!5§:Number;
      
      public var §0?§:b2Vec2;
      
      public var §^Z§:Number;
      
      public function b2Jacobian()
      {
         this.§,q§ = new b2Vec2();
         this.§0?§ = new b2Vec2();
         super();
      }
      
      public function §<!5§() : void
      {
         this.§,q§.§<!5§();
         this.§'!5§ = 0;
         this.§0?§.§<!5§();
         this.§^Z§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§,q§.SetV(param1);
         this.§'!5§ = param2;
         this.§0?§.SetV(param3);
         this.§^Z§ = param4;
      }
      
      public function §%!N§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§,q§.x * param1.x + this.§,q§.y * param1.y + this.§'!5§ * param2 + (this.§0?§.x * param3.x + this.§0?§.y * param3.y) + this.§^Z§ * param4;
      }
   }
}
