package §!H§
{
   import §;U§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §=!L§:b2Vec2;
      
      public var §`U§:Number;
      
      public var §9!E§:b2Vec2;
      
      public var §1!@§:Number;
      
      public function b2Jacobian()
      {
         this.§=!L§ = new b2Vec2();
         this.§9!E§ = new b2Vec2();
         super();
      }
      
      public function §4S§() : void
      {
         this.§=!L§.§4S§();
         this.§`U§ = 0;
         this.§9!E§.§4S§();
         this.§1!@§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§=!L§.SetV(param1);
         this.§`U§ = param2;
         this.§9!E§.SetV(param3);
         this.§1!@§ = param4;
      }
      
      public function §#s§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§=!L§.x * param1.x + this.§=!L§.y * param1.y + this.§`U§ * param2 + (this.§9!E§.x * param3.x + this.§9!E§.y * param3.y) + this.§1!@§ * param4;
      }
   }
}
