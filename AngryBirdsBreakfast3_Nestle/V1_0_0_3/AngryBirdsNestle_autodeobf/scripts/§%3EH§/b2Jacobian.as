package §>H§
{
   import §,!k§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §-!I§:b2Vec2;
      
      public var §?P§:Number;
      
      public var §#3§:b2Vec2;
      
      public var §0!`§:Number;
      
      public function b2Jacobian()
      {
         this.§-!I§ = new b2Vec2();
         this.§#3§ = new b2Vec2();
         super();
      }
      
      public function §2!n§() : void
      {
         this.§-!I§.§2!n§();
         this.§?P§ = 0;
         this.§#3§.§2!n§();
         this.§0!`§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§-!I§.SetV(param1);
         this.§?P§ = param2;
         this.§#3§.SetV(param3);
         this.§0!`§ = param4;
      }
      
      public function §%!s§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§-!I§.x * param1.x + this.§-!I§.y * param1.y + this.§?P§ * param2 + (this.§#3§.x * param3.x + this.§#3§.y * param3.y) + this.§0!`§ * param4;
      }
   }
}
