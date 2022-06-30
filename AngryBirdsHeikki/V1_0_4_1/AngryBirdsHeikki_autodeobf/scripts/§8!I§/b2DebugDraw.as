package §8!I§
{
   import §4x§.b2Color;
   import §4x§.b2internal;
   import §=i§.b2Transform;
   import §=i§.b2Vec2;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §7!6§:uint = 1;
      
      public static var §'r§:uint = 2;
      
      public static var §^§:uint = 4;
      
      public static var §<B§:uint = 8;
      
      public static var §+t§:uint = 16;
      
      public static var §7!4§:uint = 32;
       
      
      private var §1E§:uint;
      
      b2internal var §?!@§:Sprite;
      
      private var §=!Q§:Number = 1.0;
      
      private var §%w§:Number = 1.0;
      
      private var §5!U§:Number = 1.0;
      
      private var §%J§:Number = 1.0;
      
      private var §6y§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§1E§ = 0;
      }
      
      public function §6[§(param1:uint) : void
      {
         this.§1E§ = param1;
      }
      
      public function §@!D§() : uint
      {
         return this.§1E§;
      }
      
      public function §7H§(param1:uint) : void
      {
         this.§1E§ |= param1;
      }
      
      public function §%o§(param1:uint) : void
      {
         this.§1E§ &= ~param1;
      }
      
      public function §-v§(param1:Sprite) : void
      {
         this.§?!@§ = param1;
      }
      
      public function §"!+§() : Sprite
      {
         return this.§?!@§;
      }
      
      public function §,!C§(param1:Number) : void
      {
         this.§=!Q§ = param1;
      }
      
      public function §4G§() : Number
      {
         return this.§=!Q§;
      }
      
      public function §%'§(param1:Number) : void
      {
         this.§%w§ = param1;
      }
      
      public function §8!U§() : Number
      {
         return this.§%w§;
      }
      
      public function §<!C§(param1:Number) : void
      {
         this.§5!U§ = param1;
      }
      
      public function §#!X§() : Number
      {
         return this.§5!U§;
      }
      
      public function §1!R§(param1:Number) : void
      {
         this.§%J§ = param1;
      }
      
      public function §6=§() : Number
      {
         return this.§%J§;
      }
      
      public function §5!-§(param1:Number) : void
      {
         this.§6y§ = param1;
      }
      
      public function §<!J§() : Number
      {
         return this.§6y§;
      }
      
      public function §%a§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§?!@§.graphics.lineStyle(this.§%w§,param3.color,this.§5!U§);
         this.§?!@§.graphics.moveTo(param1[0].x * this.§=!Q§,param1[0].y * this.§=!Q§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§?!@§.graphics.lineTo(param1[_loc4_].x * this.§=!Q§,param1[_loc4_].y * this.§=!Q§);
            _loc4_++;
         }
         this.§?!@§.graphics.lineTo(param1[0].x * this.§=!Q§,param1[0].y * this.§=!Q§);
      }
      
      public function §`!7§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§?!@§.graphics.lineStyle(this.§%w§,param3.color,this.§5!U§);
         this.§?!@§.graphics.moveTo(param1[0].x * this.§=!Q§,param1[0].y * this.§=!Q§);
         this.§?!@§.graphics.beginFill(param3.color,this.§%J§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§?!@§.graphics.lineTo(param1[_loc4_].x * this.§=!Q§,param1[_loc4_].y * this.§=!Q§);
            _loc4_++;
         }
         this.§?!@§.graphics.lineTo(param1[0].x * this.§=!Q§,param1[0].y * this.§=!Q§);
         this.§?!@§.graphics.endFill();
      }
      
      public function §7_§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§?!@§.graphics.lineStyle(this.§%w§,param3.color,this.§5!U§);
         this.§?!@§.graphics.drawCircle(param1.x * this.§=!Q§,param1.y * this.§=!Q§,param2 * this.§=!Q§);
      }
      
      public function §!S§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§?!@§.graphics.lineStyle(this.§%w§,param4.color,this.§5!U§);
         this.§?!@§.graphics.moveTo(0,0);
         this.§?!@§.graphics.beginFill(param4.color,this.§%J§);
         this.§?!@§.graphics.drawCircle(param1.x * this.§=!Q§,param1.y * this.§=!Q§,param2 * this.§=!Q§);
         this.§?!@§.graphics.endFill();
         this.§?!@§.graphics.moveTo(param1.x * this.§=!Q§,param1.y * this.§=!Q§);
         this.§?!@§.graphics.lineTo((param1.x + param3.x * param2) * this.§=!Q§,(param1.y + param3.y * param2) * this.§=!Q§);
      }
      
      public function §%!0§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§?!@§.graphics.lineStyle(this.§%w§,param3.color,this.§5!U§);
         this.§?!@§.graphics.moveTo(param1.x * this.§=!Q§,param1.y * this.§=!Q§);
         this.§?!@§.graphics.lineTo(param2.x * this.§=!Q§,param2.y * this.§=!Q§);
      }
      
      public function §3!"§(param1:b2Transform) : void
      {
         this.§?!@§.graphics.lineStyle(this.§%w§,16711680,this.§5!U§);
         this.§?!@§.graphics.moveTo(param1.position.x * this.§=!Q§,param1.position.y * this.§=!Q§);
         this.§?!@§.graphics.lineTo((param1.position.x + this.§6y§ * param1.R.col1.x) * this.§=!Q§,(param1.position.y + this.§6y§ * param1.R.col1.y) * this.§=!Q§);
         this.§?!@§.graphics.lineStyle(this.§%w§,65280,this.§5!U§);
         this.§?!@§.graphics.moveTo(param1.position.x * this.§=!Q§,param1.position.y * this.§=!Q§);
         this.§?!@§.graphics.lineTo((param1.position.x + this.§6y§ * param1.R.col2.x) * this.§=!Q§,(param1.position.y + this.§6y§ * param1.R.col2.y) * this.§=!Q§);
      }
   }
}
