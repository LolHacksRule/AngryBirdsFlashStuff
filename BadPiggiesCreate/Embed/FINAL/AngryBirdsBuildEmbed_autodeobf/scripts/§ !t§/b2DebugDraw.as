package § !t§
{
   import §<!B§.b2Transform;
   import §<!B§.b2Vec2;
   import §?s§.b2Color;
   import §?s§.b2internal;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §=v§:uint = 1;
      
      public static var §"#§:uint = 2;
      
      public static var §,!5§:uint = 4;
      
      public static var §5!@§:uint = 8;
      
      public static var §8m§:uint = 16;
      
      public static var §55§:uint = 32;
       
      
      private var §@z§:uint;
      
      b2internal var §9!D§:Sprite;
      
      private var §5!N§:Number = 1.0;
      
      private var §5d§:Number = 1.0;
      
      private var §,I§:Number = 1.0;
      
      private var §'!C§:Number = 1.0;
      
      private var §-y§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§@z§ = 0;
      }
      
      public function §9!3§(param1:uint) : void
      {
         this.§@z§ = param1;
      }
      
      public function §>!&§() : uint
      {
         return this.§@z§;
      }
      
      public function §[!4§(param1:uint) : void
      {
         this.§@z§ |= param1;
      }
      
      public function §@n§(param1:uint) : void
      {
         this.§@z§ &= ~param1;
      }
      
      public function §"!W§(param1:Sprite) : void
      {
         this.§9!D§ = param1;
      }
      
      public function §+!q§() : Sprite
      {
         return this.§9!D§;
      }
      
      public function §?!5§(param1:Number) : void
      {
         this.§5!N§ = param1;
      }
      
      public function §#!b§() : Number
      {
         return this.§5!N§;
      }
      
      public function §0!9§(param1:Number) : void
      {
         this.§5d§ = param1;
      }
      
      public function §+!W§() : Number
      {
         return this.§5d§;
      }
      
      public function §@! §(param1:Number) : void
      {
         this.§,I§ = param1;
      }
      
      public function §2!8§() : Number
      {
         return this.§,I§;
      }
      
      public function §0!,§(param1:Number) : void
      {
         this.§'!C§ = param1;
      }
      
      public function §6O§() : Number
      {
         return this.§'!C§;
      }
      
      public function §]!U§(param1:Number) : void
      {
         this.§-y§ = param1;
      }
      
      public function §case§() : Number
      {
         return this.§-y§;
      }
      
      public function §<F§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§9!D§.graphics.lineStyle(this.§5d§,param3.color,this.§,I§);
         this.§9!D§.graphics.moveTo(param1[0].x * this.§5!N§,param1[0].y * this.§5!N§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§9!D§.graphics.lineTo(param1[_loc4_].x * this.§5!N§,param1[_loc4_].y * this.§5!N§);
            _loc4_++;
         }
         this.§9!D§.graphics.lineTo(param1[0].x * this.§5!N§,param1[0].y * this.§5!N§);
      }
      
      public function §`B§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§9!D§.graphics.lineStyle(this.§5d§,param3.color,this.§,I§);
         this.§9!D§.graphics.moveTo(param1[0].x * this.§5!N§,param1[0].y * this.§5!N§);
         this.§9!D§.graphics.beginFill(param3.color,this.§'!C§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§9!D§.graphics.lineTo(param1[_loc4_].x * this.§5!N§,param1[_loc4_].y * this.§5!N§);
            _loc4_++;
         }
         this.§9!D§.graphics.lineTo(param1[0].x * this.§5!N§,param1[0].y * this.§5!N§);
         this.§9!D§.graphics.endFill();
      }
      
      public function §+e§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§9!D§.graphics.lineStyle(this.§5d§,param3.color,this.§,I§);
         this.§9!D§.graphics.drawCircle(param1.x * this.§5!N§,param1.y * this.§5!N§,param2 * this.§5!N§);
      }
      
      public function §%!u§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§9!D§.graphics.lineStyle(this.§5d§,param4.color,this.§,I§);
         this.§9!D§.graphics.moveTo(0,0);
         this.§9!D§.graphics.beginFill(param4.color,this.§'!C§);
         this.§9!D§.graphics.drawCircle(param1.x * this.§5!N§,param1.y * this.§5!N§,param2 * this.§5!N§);
         this.§9!D§.graphics.endFill();
         this.§9!D§.graphics.moveTo(param1.x * this.§5!N§,param1.y * this.§5!N§);
         this.§9!D§.graphics.lineTo((param1.x + param3.x * param2) * this.§5!N§,(param1.y + param3.y * param2) * this.§5!N§);
      }
      
      public function §=b§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§9!D§.graphics.lineStyle(this.§5d§,param3.color,this.§,I§);
         this.§9!D§.graphics.moveTo(param1.x * this.§5!N§,param1.y * this.§5!N§);
         this.§9!D§.graphics.lineTo(param2.x * this.§5!N§,param2.y * this.§5!N§);
      }
      
      public function §]!M§(param1:b2Transform) : void
      {
         this.§9!D§.graphics.lineStyle(this.§5d§,16711680,this.§,I§);
         this.§9!D§.graphics.moveTo(param1.position.x * this.§5!N§,param1.position.y * this.§5!N§);
         this.§9!D§.graphics.lineTo((param1.position.x + this.§-y§ * param1.R.col1.x) * this.§5!N§,(param1.position.y + this.§-y§ * param1.R.col1.y) * this.§5!N§);
         this.§9!D§.graphics.lineStyle(this.§5d§,65280,this.§,I§);
         this.§9!D§.graphics.moveTo(param1.position.x * this.§5!N§,param1.position.y * this.§5!N§);
         this.§9!D§.graphics.lineTo((param1.position.x + this.§-y§ * param1.R.col2.x) * this.§5!N§,(param1.position.y + this.§-y§ * param1.R.col2.y) * this.§5!N§);
      }
   }
}
