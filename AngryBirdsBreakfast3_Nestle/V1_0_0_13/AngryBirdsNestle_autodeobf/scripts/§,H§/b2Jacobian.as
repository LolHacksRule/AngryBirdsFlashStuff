package §,H§
{
   import §?"'§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §<!v§:b2Vec2;
      
      public var §6!V§:Number;
      
      public var §"'§:b2Vec2;
      
      public var §[6§:Number;
      
      public function b2Jacobian()
      {
         this.§<!v§ = new b2Vec2();
         this.§"'§ = new b2Vec2();
         super();
      }
      
      public function §6!c§() : void
      {
         this.§<!v§.§6!c§();
         this.§6!V§ = 0;
         this.§"'§.§6!c§();
         this.§[6§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§<!v§.SetV(param1);
         this.§6!V§ = param2;
         this.§"'§.SetV(param3);
         this.§[6§ = param4;
      }
      
      public function §@!a§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§<!v§.x * param1.x + this.§<!v§.y * param1.y + this.§6!V§ * param2 + (this.§"'§.x * param3.x + this.§"'§.y * param3.y) + this.§[6§ * param4;
      }
   }
}
