package §[9§
{
   import §6!n§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §'!P§:b2Vec2;
      
      public var §5!B§:Number;
      
      public var §@"C§:b2Vec2;
      
      public var §3Q§:Number;
      
      public function b2Jacobian()
      {
         this.§'!P§ = new b2Vec2();
         this.§@"C§ = new b2Vec2();
         super();
      }
      
      public function §58§() : void
      {
         this.§'!P§.§58§();
         this.§5!B§ = 0;
         this.§@"C§.§58§();
         this.§3Q§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§'!P§.SetV(param1);
         this.§5!B§ = param2;
         this.§@"C§.SetV(param3);
         this.§3Q§ = param4;
      }
      
      public function §&E§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§'!P§.x * param1.x + this.§'!P§.y * param1.y + this.§5!B§ * param2 + (this.§@"C§.x * param3.x + this.§@"C§.y * param3.y) + this.§3Q§ * param4;
      }
   }
}
