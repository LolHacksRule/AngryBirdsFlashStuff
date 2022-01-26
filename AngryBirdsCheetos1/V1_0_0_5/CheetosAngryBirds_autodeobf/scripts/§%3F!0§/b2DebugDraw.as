package §?!0§
{
   import §;]§.b2Color;
   import §;]§.b2internal;
   import §=E§.b2Transform;
   import §=E§.b2Vec2;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §-!=§:uint = 1;
      
      public static var §3Q§:uint = 2;
      
      public static var §5h§:uint = 4;
      
      public static var § Y§:uint = 8;
      
      public static var §&I§:uint = 16;
      
      public static var §`!1§:uint = 32;
       
      
      private var §,!I§:uint;
      
      b2internal var §&!H§:Sprite;
      
      private var §42§:Number = 1.0;
      
      private var §>!H§:Number = 1.0;
      
      private var §#L§:Number = 1.0;
      
      private var §2w§:Number = 1.0;
      
      private var §'!S§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§,!I§ = 0;
      }
      
      public function §3R§(param1:uint) : void
      {
         this.§,!I§ = param1;
      }
      
      public function §for §() : uint
      {
         return this.§,!I§;
      }
      
      public function §0T§(param1:uint) : void
      {
         this.§,!I§ |= param1;
      }
      
      public function §6!V§(param1:uint) : void
      {
         this.§,!I§ &= ~param1;
      }
      
      public function §5W§(param1:Sprite) : void
      {
         this.§&!H§ = param1;
      }
      
      public function §8j§() : Sprite
      {
         return this.§&!H§;
      }
      
      public function §2!G§(param1:Number) : void
      {
         this.§42§ = param1;
      }
      
      public function §;p§() : Number
      {
         return this.§42§;
      }
      
      public function §>!1§(param1:Number) : void
      {
         this.§>!H§ = param1;
      }
      
      public function §5>§() : Number
      {
         return this.§>!H§;
      }
      
      public function §]!5§(param1:Number) : void
      {
         this.§#L§ = param1;
      }
      
      public function §#;§() : Number
      {
         return this.§#L§;
      }
      
      public function §'m§(param1:Number) : void
      {
         this.§2w§ = param1;
      }
      
      public function §]i§() : Number
      {
         return this.§2w§;
      }
      
      public function §,U§(param1:Number) : void
      {
         this.§'!S§ = param1;
      }
      
      public function § if§() : Number
      {
         return this.§'!S§;
      }
      
      public function §6#§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§&!H§.graphics.lineStyle(this.§>!H§,param3.color,this.§#L§);
         this.§&!H§.graphics.moveTo(param1[0].x * this.§42§,param1[0].y * this.§42§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§&!H§.graphics.lineTo(param1[_loc4_].x * this.§42§,param1[_loc4_].y * this.§42§);
            _loc4_++;
         }
         this.§&!H§.graphics.lineTo(param1[0].x * this.§42§,param1[0].y * this.§42§);
      }
      
      public function §7b§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§&!H§.graphics.lineStyle(this.§>!H§,param3.color,this.§#L§);
         this.§&!H§.graphics.moveTo(param1[0].x * this.§42§,param1[0].y * this.§42§);
         this.§&!H§.graphics.beginFill(param3.color,this.§2w§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§&!H§.graphics.lineTo(param1[_loc4_].x * this.§42§,param1[_loc4_].y * this.§42§);
            _loc4_++;
         }
         this.§&!H§.graphics.lineTo(param1[0].x * this.§42§,param1[0].y * this.§42§);
         this.§&!H§.graphics.endFill();
      }
      
      public function §6w§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§&!H§.graphics.lineStyle(this.§>!H§,param3.color,this.§#L§);
         this.§&!H§.graphics.drawCircle(param1.x * this.§42§,param1.y * this.§42§,param2 * this.§42§);
      }
      
      public function §&!!§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§&!H§.graphics.lineStyle(this.§>!H§,param4.color,this.§#L§);
         this.§&!H§.graphics.moveTo(0,0);
         this.§&!H§.graphics.beginFill(param4.color,this.§2w§);
         this.§&!H§.graphics.drawCircle(param1.x * this.§42§,param1.y * this.§42§,param2 * this.§42§);
         this.§&!H§.graphics.endFill();
         this.§&!H§.graphics.moveTo(param1.x * this.§42§,param1.y * this.§42§);
         this.§&!H§.graphics.lineTo((param1.x + param3.x * param2) * this.§42§,(param1.y + param3.y * param2) * this.§42§);
      }
      
      public function §^2§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§&!H§.graphics.lineStyle(this.§>!H§,param3.color,this.§#L§);
         this.§&!H§.graphics.moveTo(param1.x * this.§42§,param1.y * this.§42§);
         this.§&!H§.graphics.lineTo(param2.x * this.§42§,param2.y * this.§42§);
      }
      
      public function §0C§(param1:b2Transform) : void
      {
         this.§&!H§.graphics.lineStyle(this.§>!H§,16711680,this.§#L§);
         this.§&!H§.graphics.moveTo(param1.position.x * this.§42§,param1.position.y * this.§42§);
         this.§&!H§.graphics.lineTo((param1.position.x + this.§'!S§ * param1.R.col1.x) * this.§42§,(param1.position.y + this.§'!S§ * param1.R.col1.y) * this.§42§);
         this.§&!H§.graphics.lineStyle(this.§>!H§,65280,this.§#L§);
         this.§&!H§.graphics.moveTo(param1.position.x * this.§42§,param1.position.y * this.§42§);
         this.§&!H§.graphics.lineTo((param1.position.x + this.§'!S§ * param1.R.col2.x) * this.§42§,(param1.position.y + this.§'!S§ * param1.R.col2.y) * this.§42§);
      }
   }
}
