package §,!8§
{
   import §&!B§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §3P§:b2Vec2;
      
      public var §5#§:Number;
      
      public var §2#§:b2Vec2;
      
      public var §"6§:Number;
      
      public function b2Jacobian()
      {
         this.§3P§ = new b2Vec2();
         this.§2#§ = new b2Vec2();
         super();
      }
      
      public function §,!3§() : void
      {
         this.§3P§.§,!3§();
         this.§5#§ = 0;
         this.§2#§.§,!3§();
         this.§"6§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§3P§.SetV(param1);
         this.§5#§ = param2;
         this.§2#§.SetV(param3);
         this.§"6§ = param4;
      }
      
      public function §6<§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§3P§.x * param1.x + this.§3P§.y * param1.y + this.§5#§ * param2 + (this.§2#§.x * param3.x + this.§2#§.y * param3.y) + this.§"6§ * param4;
      }
   }
}
