package §=#n§
{
   import §0H§.b2Color;
   import §0H§.b2internal;
   import §0m§.b2Transform;
   import §0m§.b2Vec2;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §-#K§:uint = 1;
      
      public static var §1$+§:uint = 2;
      
      public static var §?N§:uint = 4;
      
      public static var §%#]§:uint = 8;
      
      public static var §!!s§:uint = 16;
      
      public static var §!"&§:uint = 32;
       
      
      private var §]!W§:uint;
      
      b2internal var §"!F§:Sprite;
      
      private var §&I§:Number = 1.0;
      
      private var §3#C§:Number = 1.0;
      
      private var §,#0§:Number = 1.0;
      
      private var §`!s§:Number = 1.0;
      
      private var § #>§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§]!W§ = 0;
      }
      
      public function §0!O§(param1:uint) : void
      {
         this.§]!W§ = param1;
      }
      
      public function §&#y§() : uint
      {
         return this.§]!W§;
      }
      
      public function §8#2§(param1:uint) : void
      {
         this.§]!W§ |= param1;
      }
      
      public function §1+§(param1:uint) : void
      {
         this.§]!W§ &= ~param1;
      }
      
      public function §,"=§(param1:Sprite) : void
      {
         this.§"!F§ = param1;
      }
      
      public function §"b§() : Sprite
      {
         return this.§"!F§;
      }
      
      public function §<"5§(param1:Number) : void
      {
         this.§&I§ = param1;
      }
      
      public function §5"q§() : Number
      {
         return this.§&I§;
      }
      
      public function § !+§(param1:Number) : void
      {
         this.§3#C§ = param1;
      }
      
      public function §1"H§() : Number
      {
         return this.§3#C§;
      }
      
      public function §7"K§(param1:Number) : void
      {
         this.§,#0§ = param1;
      }
      
      public function §5!h§() : Number
      {
         return this.§,#0§;
      }
      
      public function §'#"§(param1:Number) : void
      {
         this.§`!s§ = param1;
      }
      
      public function §"!;§() : Number
      {
         return this.§`!s§;
      }
      
      public function §2;§(param1:Number) : void
      {
         this.§ #>§ = param1;
      }
      
      public function §""L§() : Number
      {
         return this.§ #>§;
      }
      
      public function §-"B§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§"!F§.graphics.lineStyle(this.§3#C§,param3.color,this.§,#0§);
         this.§"!F§.graphics.moveTo(param1[0].x * this.§&I§,param1[0].y * this.§&I§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§"!F§.graphics.lineTo(param1[_loc4_].x * this.§&I§,param1[_loc4_].y * this.§&I§);
            _loc4_++;
         }
         this.§"!F§.graphics.lineTo(param1[0].x * this.§&I§,param1[0].y * this.§&I§);
      }
      
      public function §?#9§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§"!F§.graphics.lineStyle(this.§3#C§,param3.color,this.§,#0§);
         this.§"!F§.graphics.moveTo(param1[0].x * this.§&I§,param1[0].y * this.§&I§);
         this.§"!F§.graphics.beginFill(param3.color,this.§`!s§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§"!F§.graphics.lineTo(param1[_loc4_].x * this.§&I§,param1[_loc4_].y * this.§&I§);
            _loc4_++;
         }
         this.§"!F§.graphics.lineTo(param1[0].x * this.§&I§,param1[0].y * this.§&I§);
         this.§"!F§.graphics.endFill();
      }
      
      public function §#"=§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§"!F§.graphics.lineStyle(this.§3#C§,param3.color,this.§,#0§);
         this.§"!F§.graphics.drawCircle(param1.x * this.§&I§,param1.y * this.§&I§,param2 * this.§&I§);
      }
      
      public function §,#k§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§"!F§.graphics.lineStyle(this.§3#C§,param4.color,this.§,#0§);
         this.§"!F§.graphics.moveTo(0,0);
         this.§"!F§.graphics.beginFill(param4.color,this.§`!s§);
         this.§"!F§.graphics.drawCircle(param1.x * this.§&I§,param1.y * this.§&I§,param2 * this.§&I§);
         this.§"!F§.graphics.endFill();
         this.§"!F§.graphics.moveTo(param1.x * this.§&I§,param1.y * this.§&I§);
         this.§"!F§.graphics.lineTo((param1.x + param3.x * param2) * this.§&I§,(param1.y + param3.y * param2) * this.§&I§);
      }
      
      public function §%#A§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§"!F§.graphics.lineStyle(this.§3#C§,param3.color,this.§,#0§);
         this.§"!F§.graphics.moveTo(param1.x * this.§&I§,param1.y * this.§&I§);
         this.§"!F§.graphics.lineTo(param2.x * this.§&I§,param2.y * this.§&I§);
      }
      
      public function §@"5§(param1:b2Transform) : void
      {
         this.§"!F§.graphics.lineStyle(this.§3#C§,16711680,this.§,#0§);
         this.§"!F§.graphics.moveTo(param1.position.x * this.§&I§,param1.position.y * this.§&I§);
         this.§"!F§.graphics.lineTo((param1.position.x + this.§ #>§ * param1.R.col1.x) * this.§&I§,(param1.position.y + this.§ #>§ * param1.R.col1.y) * this.§&I§);
         this.§"!F§.graphics.lineStyle(this.§3#C§,65280,this.§,#0§);
         this.§"!F§.graphics.moveTo(param1.position.x * this.§&I§,param1.position.y * this.§&I§);
         this.§"!F§.graphics.lineTo((param1.position.x + this.§ #>§ * param1.R.col2.x) * this.§&I§,(param1.position.y + this.§ #>§ * param1.R.col2.y) * this.§&I§);
      }
   }
}
