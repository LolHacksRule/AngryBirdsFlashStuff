package §"d§
{
   import §6A§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §,!5§:b2Vec2;
      
      public var §]j§:Number;
      
      public var §8M§:b2Vec2;
      
      public var §0!Q§:Number;
      
      public function b2Jacobian()
      {
         this.§,!5§ = new b2Vec2();
         this.§8M§ = new b2Vec2();
         super();
      }
      
      public function §^!,§() : void
      {
         this.§,!5§.§^!,§();
         this.§]j§ = 0;
         this.§8M§.§^!,§();
         this.§0!Q§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§,!5§.SetV(param1);
         this.§]j§ = param2;
         this.§8M§.SetV(param3);
         this.§0!Q§ = param4;
      }
      
      public function §&u§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§,!5§.x * param1.x + this.§,!5§.y * param1.y + this.§]j§ * param2 + (this.§8M§.x * param3.x + this.§8M§.y * param3.y) + this.§0!Q§ * param4;
      }
   }
}
