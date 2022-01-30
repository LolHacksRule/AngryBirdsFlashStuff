package §`]§
{
   import §!S§.b2Color;
   import §!S§.b2internal;
   import §?!h§.b2Transform;
   import §?!h§.b2Vec2;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §<!!§:uint = 1;
      
      public static var §'#§:uint = 2;
      
      public static var §5!R§:uint = 4;
      
      public static var §3i§:uint = 8;
      
      public static var §5!!§:uint = 16;
      
      public static var §#!p§:uint = 32;
       
      
      private var §,I§:uint;
      
      b2internal var §2!7§:Sprite;
      
      private var §@7§:Number = 1.0;
      
      private var § !I§:Number = 1.0;
      
      private var §1!!§:Number = 1.0;
      
      private var §for §:Number = 1.0;
      
      private var §6!p§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§,I§ = 0;
      }
      
      public function §!!%§(param1:uint) : void
      {
         this.§,I§ = param1;
      }
      
      public function §6v§() : uint
      {
         return this.§,I§;
      }
      
      public function §-!%§(param1:uint) : void
      {
         this.§,I§ |= param1;
      }
      
      public function §&4§(param1:uint) : void
      {
         this.§,I§ &= ~param1;
      }
      
      public function §%q§(param1:Sprite) : void
      {
         this.§2!7§ = param1;
      }
      
      public function §@"$§() : Sprite
      {
         return this.§2!7§;
      }
      
      public function §4!x§(param1:Number) : void
      {
         this.§@7§ = param1;
      }
      
      public function §!!_§() : Number
      {
         return this.§@7§;
      }
      
      public function §&"!§(param1:Number) : void
      {
         this.§ !I§ = param1;
      }
      
      public function §]Y§() : Number
      {
         return this.§ !I§;
      }
      
      public function §0N§(param1:Number) : void
      {
         this.§1!!§ = param1;
      }
      
      public function §[!t§() : Number
      {
         return this.§1!!§;
      }
      
      public function §]q§(param1:Number) : void
      {
         this.§for § = param1;
      }
      
      public function §!J§() : Number
      {
         return this.§for §;
      }
      
      public function §@!&§(param1:Number) : void
      {
         this.§6!p§ = param1;
      }
      
      public function §8!5§() : Number
      {
         return this.§6!p§;
      }
      
      public function §1N§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§2!7§.graphics.lineStyle(this.§ !I§,param3.color,this.§1!!§);
         this.§2!7§.graphics.moveTo(param1[0].x * this.§@7§,param1[0].y * this.§@7§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§2!7§.graphics.lineTo(param1[_loc4_].x * this.§@7§,param1[_loc4_].y * this.§@7§);
            _loc4_++;
         }
         this.§2!7§.graphics.lineTo(param1[0].x * this.§@7§,param1[0].y * this.§@7§);
      }
      
      public function §,-§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§2!7§.graphics.lineStyle(this.§ !I§,param3.color,this.§1!!§);
         this.§2!7§.graphics.moveTo(param1[0].x * this.§@7§,param1[0].y * this.§@7§);
         this.§2!7§.graphics.beginFill(param3.color,this.§for §);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§2!7§.graphics.lineTo(param1[_loc4_].x * this.§@7§,param1[_loc4_].y * this.§@7§);
            _loc4_++;
         }
         this.§2!7§.graphics.lineTo(param1[0].x * this.§@7§,param1[0].y * this.§@7§);
         this.§2!7§.graphics.endFill();
      }
      
      public function §9!k§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§2!7§.graphics.lineStyle(this.§ !I§,param3.color,this.§1!!§);
         this.§2!7§.graphics.drawCircle(param1.x * this.§@7§,param1.y * this.§@7§,param2 * this.§@7§);
      }
      
      public function §<!I§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§2!7§.graphics.lineStyle(this.§ !I§,param4.color,this.§1!!§);
         this.§2!7§.graphics.moveTo(0,0);
         this.§2!7§.graphics.beginFill(param4.color,this.§for §);
         this.§2!7§.graphics.drawCircle(param1.x * this.§@7§,param1.y * this.§@7§,param2 * this.§@7§);
         this.§2!7§.graphics.endFill();
         this.§2!7§.graphics.moveTo(param1.x * this.§@7§,param1.y * this.§@7§);
         this.§2!7§.graphics.lineTo((param1.x + param3.x * param2) * this.§@7§,(param1.y + param3.y * param2) * this.§@7§);
      }
      
      public function §8!P§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§2!7§.graphics.lineStyle(this.§ !I§,param3.color,this.§1!!§);
         this.§2!7§.graphics.moveTo(param1.x * this.§@7§,param1.y * this.§@7§);
         this.§2!7§.graphics.lineTo(param2.x * this.§@7§,param2.y * this.§@7§);
      }
      
      public function §6!T§(param1:b2Transform) : void
      {
         this.§2!7§.graphics.lineStyle(this.§ !I§,16711680,this.§1!!§);
         this.§2!7§.graphics.moveTo(param1.position.x * this.§@7§,param1.position.y * this.§@7§);
         this.§2!7§.graphics.lineTo((param1.position.x + this.§6!p§ * param1.R.col1.x) * this.§@7§,(param1.position.y + this.§6!p§ * param1.R.col1.y) * this.§@7§);
         this.§2!7§.graphics.lineStyle(this.§ !I§,65280,this.§1!!§);
         this.§2!7§.graphics.moveTo(param1.position.x * this.§@7§,param1.position.y * this.§@7§);
         this.§2!7§.graphics.lineTo((param1.position.x + this.§6!p§ * param1.R.col2.x) * this.§@7§,(param1.position.y + this.§6!p§ * param1.R.col2.y) * this.§@7§);
      }
   }
}
