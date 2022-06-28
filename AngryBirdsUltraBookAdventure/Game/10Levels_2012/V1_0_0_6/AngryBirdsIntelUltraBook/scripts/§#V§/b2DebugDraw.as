package §#V§
{
   import §3!m§.b2Color;
   import §3!m§.b2internal;
   import §;%§.b2Transform;
   import §;%§.b2Vec2;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var § J§:uint = 1;
      
      public static var §]!G§:uint = 2;
      
      public static var §3T§:uint = 4;
      
      public static var §<!x§:uint = 8;
      
      public static var §9v§:uint = 16;
      
      public static var §<b§:uint = 32;
       
      
      private var §9!9§:uint;
      
      b2internal var §4@§:Sprite;
      
      private var §+!]§:Number = 1.0;
      
      private var §4_§:Number = 1.0;
      
      private var §case §:Number = 1.0;
      
      private var §10§:Number = 1.0;
      
      private var §2@§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§9!9§ = 0;
      }
      
      public function §=!s§(param1:uint) : void
      {
         this.§9!9§ = param1;
      }
      
      public function §!5§() : uint
      {
         return this.§9!9§;
      }
      
      public function §4D§(param1:uint) : void
      {
         this.§9!9§ |= param1;
      }
      
      public function §<u§(param1:uint) : void
      {
         this.§9!9§ &= ~param1;
      }
      
      public function §9!H§(param1:Sprite) : void
      {
         this.§4@§ = param1;
      }
      
      public function §5!r§() : Sprite
      {
         return this.§4@§;
      }
      
      public function §4Y§(param1:Number) : void
      {
         this.§+!]§ = param1;
      }
      
      public function §0!<§() : Number
      {
         return this.§+!]§;
      }
      
      public function §+e§(param1:Number) : void
      {
         this.§4_§ = param1;
      }
      
      public function §^!0§() : Number
      {
         return this.§4_§;
      }
      
      public function §6!w§(param1:Number) : void
      {
         this.§case § = param1;
      }
      
      public function §8!§() : Number
      {
         return this.§case §;
      }
      
      public function §8$§(param1:Number) : void
      {
         this.§10§ = param1;
      }
      
      public function §@!Z§() : Number
      {
         return this.§10§;
      }
      
      public function §1]§(param1:Number) : void
      {
         this.§2@§ = param1;
      }
      
      public function §0u§() : Number
      {
         return this.§2@§;
      }
      
      public function §6!@§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§4@§.graphics.lineStyle(this.§4_§,param3.color,this.§case §);
         this.§4@§.graphics.moveTo(param1[0].x * this.§+!]§,param1[0].y * this.§+!]§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§4@§.graphics.lineTo(param1[_loc4_].x * this.§+!]§,param1[_loc4_].y * this.§+!]§);
            _loc4_++;
         }
         this.§4@§.graphics.lineTo(param1[0].x * this.§+!]§,param1[0].y * this.§+!]§);
      }
      
      public function §%!e§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§4@§.graphics.lineStyle(this.§4_§,param3.color,this.§case §);
         this.§4@§.graphics.moveTo(param1[0].x * this.§+!]§,param1[0].y * this.§+!]§);
         this.§4@§.graphics.beginFill(param3.color,this.§10§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§4@§.graphics.lineTo(param1[_loc4_].x * this.§+!]§,param1[_loc4_].y * this.§+!]§);
            _loc4_++;
         }
         this.§4@§.graphics.lineTo(param1[0].x * this.§+!]§,param1[0].y * this.§+!]§);
         this.§4@§.graphics.endFill();
      }
      
      public function §!c§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§4@§.graphics.lineStyle(this.§4_§,param3.color,this.§case §);
         this.§4@§.graphics.drawCircle(param1.x * this.§+!]§,param1.y * this.§+!]§,param2 * this.§+!]§);
      }
      
      public function §,%§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§4@§.graphics.lineStyle(this.§4_§,param4.color,this.§case §);
         this.§4@§.graphics.moveTo(0,0);
         this.§4@§.graphics.beginFill(param4.color,this.§10§);
         this.§4@§.graphics.drawCircle(param1.x * this.§+!]§,param1.y * this.§+!]§,param2 * this.§+!]§);
         this.§4@§.graphics.endFill();
         this.§4@§.graphics.moveTo(param1.x * this.§+!]§,param1.y * this.§+!]§);
         this.§4@§.graphics.lineTo((param1.x + param3.x * param2) * this.§+!]§,(param1.y + param3.y * param2) * this.§+!]§);
      }
      
      public function §@!7§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§4@§.graphics.lineStyle(this.§4_§,param3.color,this.§case §);
         this.§4@§.graphics.moveTo(param1.x * this.§+!]§,param1.y * this.§+!]§);
         this.§4@§.graphics.lineTo(param2.x * this.§+!]§,param2.y * this.§+!]§);
      }
      
      public function §<G§(param1:b2Transform) : void
      {
         this.§4@§.graphics.lineStyle(this.§4_§,16711680,this.§case §);
         this.§4@§.graphics.moveTo(param1.position.x * this.§+!]§,param1.position.y * this.§+!]§);
         this.§4@§.graphics.lineTo((param1.position.x + this.§2@§ * param1.R.col1.x) * this.§+!]§,(param1.position.y + this.§2@§ * param1.R.col1.y) * this.§+!]§);
         this.§4@§.graphics.lineStyle(this.§4_§,65280,this.§case §);
         this.§4@§.graphics.moveTo(param1.position.x * this.§+!]§,param1.position.y * this.§+!]§);
         this.§4@§.graphics.lineTo((param1.position.x + this.§2@§ * param1.R.col2.x) * this.§+!]§,(param1.position.y + this.§2@§ * param1.R.col2.y) * this.§+!]§);
      }
   }
}
