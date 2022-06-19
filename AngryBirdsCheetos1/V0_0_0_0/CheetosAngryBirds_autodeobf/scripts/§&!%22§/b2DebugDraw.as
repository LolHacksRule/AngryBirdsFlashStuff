package §&!"§
{
   import §9"§.b2Transform;
   import §9"§.b2Vec2;
   import §>!@§.b2Color;
   import §>!@§.b2internal;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §3Q§:uint = 1;
      
      public static var §5h§:uint = 2;
      
      public static var § Y§:uint = 4;
      
      public static var §&I§:uint = 8;
      
      public static var §`!1§:uint = 16;
      
      public static var §!%§:uint = 32;
       
      
      private var §&!H§:uint;
      
      b2internal var §42§:Sprite;
      
      private var §>!H§:Number = 1.0;
      
      private var §#L§:Number = 1.0;
      
      private var §2w§:Number = 1.0;
      
      private var §'!S§:Number = 1.0;
      
      private var §-!=§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§&!H§ = 0;
      }
      
      public function §for §(param1:uint) : void
      {
         this.§&!H§ = param1;
      }
      
      public function §0T§() : uint
      {
         return this.§&!H§;
      }
      
      public function §6!V§(param1:uint) : void
      {
         this.§&!H§ |= param1;
      }
      
      public function §5W§(param1:uint) : void
      {
         this.§&!H§ &= ~param1;
      }
      
      public function §8j§(param1:Sprite) : void
      {
         this.§42§ = param1;
      }
      
      public function §2!G§() : Sprite
      {
         return this.§42§;
      }
      
      public function §;p§(param1:Number) : void
      {
         this.§>!H§ = param1;
      }
      
      public function §>!1§() : Number
      {
         return this.§>!H§;
      }
      
      public function §5>§(param1:Number) : void
      {
         this.§#L§ = param1;
      }
      
      public function §]!5§() : Number
      {
         return this.§#L§;
      }
      
      public function §#;§(param1:Number) : void
      {
         this.§2w§ = param1;
      }
      
      public function §'m§() : Number
      {
         return this.§2w§;
      }
      
      public function §]i§(param1:Number) : void
      {
         this.§'!S§ = param1;
      }
      
      public function §,U§() : Number
      {
         return this.§'!S§;
      }
      
      public function § if§(param1:Number) : void
      {
         this.§-!=§ = param1;
      }
      
      public function §6#§() : Number
      {
         return this.§-!=§;
      }
      
      public function §7b§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§42§.graphics.lineStyle(this.§#L§,param3.color,this.§2w§);
         this.§42§.graphics.moveTo(param1[0].x * this.§>!H§,param1[0].y * this.§>!H§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§42§.graphics.lineTo(param1[_loc4_].x * this.§>!H§,param1[_loc4_].y * this.§>!H§);
            _loc4_++;
         }
         this.§42§.graphics.lineTo(param1[0].x * this.§>!H§,param1[0].y * this.§>!H§);
      }
      
      public function §6w§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§42§.graphics.lineStyle(this.§#L§,param3.color,this.§2w§);
         this.§42§.graphics.moveTo(param1[0].x * this.§>!H§,param1[0].y * this.§>!H§);
         this.§42§.graphics.beginFill(param3.color,this.§'!S§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§42§.graphics.lineTo(param1[_loc4_].x * this.§>!H§,param1[_loc4_].y * this.§>!H§);
            _loc4_++;
         }
         this.§42§.graphics.lineTo(param1[0].x * this.§>!H§,param1[0].y * this.§>!H§);
         this.§42§.graphics.endFill();
      }
      
      public function §&!!§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§42§.graphics.lineStyle(this.§#L§,param3.color,this.§2w§);
         this.§42§.graphics.drawCircle(param1.x * this.§>!H§,param1.y * this.§>!H§,param2 * this.§>!H§);
      }
      
      public function §^2§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§42§.graphics.lineStyle(this.§#L§,param4.color,this.§2w§);
         this.§42§.graphics.moveTo(0,0);
         this.§42§.graphics.beginFill(param4.color,this.§'!S§);
         this.§42§.graphics.drawCircle(param1.x * this.§>!H§,param1.y * this.§>!H§,param2 * this.§>!H§);
         this.§42§.graphics.endFill();
         this.§42§.graphics.moveTo(param1.x * this.§>!H§,param1.y * this.§>!H§);
         this.§42§.graphics.lineTo((param1.x + param3.x * param2) * this.§>!H§,(param1.y + param3.y * param2) * this.§>!H§);
      }
      
      public function §0C§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§42§.graphics.lineStyle(this.§#L§,param3.color,this.§2w§);
         this.§42§.graphics.moveTo(param1.x * this.§>!H§,param1.y * this.§>!H§);
         this.§42§.graphics.lineTo(param2.x * this.§>!H§,param2.y * this.§>!H§);
      }
      
      public function §,!I§(param1:b2Transform) : void
      {
         this.§42§.graphics.lineStyle(this.§#L§,16711680,this.§2w§);
         this.§42§.graphics.moveTo(param1.position.x * this.§>!H§,param1.position.y * this.§>!H§);
         this.§42§.graphics.lineTo((param1.position.x + this.§-!=§ * param1.R.col1.x) * this.§>!H§,(param1.position.y + this.§-!=§ * param1.R.col1.y) * this.§>!H§);
         this.§42§.graphics.lineStyle(this.§#L§,65280,this.§2w§);
         this.§42§.graphics.moveTo(param1.position.x * this.§>!H§,param1.position.y * this.§>!H§);
         this.§42§.graphics.lineTo((param1.position.x + this.§-!=§ * param1.R.col2.x) * this.§>!H§,(param1.position.y + this.§-!=§ * param1.R.col2.y) * this.§>!H§);
      }
   }
}
