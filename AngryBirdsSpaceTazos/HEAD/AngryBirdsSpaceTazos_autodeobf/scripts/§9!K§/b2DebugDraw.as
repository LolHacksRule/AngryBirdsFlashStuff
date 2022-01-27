package §9!K§
{
   import §'!a§.b2Color;
   import §'!a§.b2internal;
   import §6!n§.b2Transform;
   import §6!n§.b2Vec2;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §8!u§:uint = 1;
      
      public static var § "B§:uint = 2;
      
      public static var §4Q§:uint = 4;
      
      public static var §@!Y§:uint = 8;
      
      public static var §"6§:uint = 16;
      
      public static var §!"H§:uint = 32;
       
      
      private var § _§:uint;
      
      b2internal var §+L§:Sprite;
      
      private var §?!t§:Number = 1.0;
      
      private var §1!I§:Number = 1.0;
      
      private var §3S§:Number = 1.0;
      
      private var §'!6§:Number = 1.0;
      
      private var §^`§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§ _§ = 0;
      }
      
      public function §#!z§(param1:uint) : void
      {
         this.§ _§ = param1;
      }
      
      public function §#"2§() : uint
      {
         return this.§ _§;
      }
      
      public function §@!8§(param1:uint) : void
      {
         this.§ _§ |= param1;
      }
      
      public function § !M§(param1:uint) : void
      {
         this.§ _§ &= ~param1;
      }
      
      public function §4-§(param1:Sprite) : void
      {
         this.§+L§ = param1;
      }
      
      public function §?!@§() : Sprite
      {
         return this.§+L§;
      }
      
      public function §,m§(param1:Number) : void
      {
         this.§?!t§ = param1;
      }
      
      public function §0T§() : Number
      {
         return this.§?!t§;
      }
      
      public function § "E§(param1:Number) : void
      {
         this.§1!I§ = param1;
      }
      
      public function §'!,§() : Number
      {
         return this.§1!I§;
      }
      
      public function §'b§(param1:Number) : void
      {
         this.§3S§ = param1;
      }
      
      public function §"!y§() : Number
      {
         return this.§3S§;
      }
      
      public function §%"9§(param1:Number) : void
      {
         this.§'!6§ = param1;
      }
      
      public function §=!J§() : Number
      {
         return this.§'!6§;
      }
      
      public function §9!z§(param1:Number) : void
      {
         this.§^`§ = param1;
      }
      
      public function §`!O§() : Number
      {
         return this.§^`§;
      }
      
      public function §7C§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§+L§.graphics.lineStyle(this.§1!I§,param3.color,this.§3S§);
         this.§+L§.graphics.moveTo(param1[0].x * this.§?!t§,param1[0].y * this.§?!t§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§+L§.graphics.lineTo(param1[_loc4_].x * this.§?!t§,param1[_loc4_].y * this.§?!t§);
            _loc4_++;
         }
         this.§+L§.graphics.lineTo(param1[0].x * this.§?!t§,param1[0].y * this.§?!t§);
      }
      
      public function §2;§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§+L§.graphics.lineStyle(this.§1!I§,param3.color,this.§3S§);
         this.§+L§.graphics.moveTo(param1[0].x * this.§?!t§,param1[0].y * this.§?!t§);
         this.§+L§.graphics.beginFill(param3.color,this.§'!6§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§+L§.graphics.lineTo(param1[_loc4_].x * this.§?!t§,param1[_loc4_].y * this.§?!t§);
            _loc4_++;
         }
         this.§+L§.graphics.lineTo(param1[0].x * this.§?!t§,param1[0].y * this.§?!t§);
         this.§+L§.graphics.endFill();
      }
      
      public function §[!^§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§+L§.graphics.lineStyle(this.§1!I§,param3.color,this.§3S§);
         this.§+L§.graphics.drawCircle(param1.x * this.§?!t§,param1.y * this.§?!t§,param2 * this.§?!t§);
      }
      
      public function §=!1§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§+L§.graphics.lineStyle(this.§1!I§,param4.color,this.§3S§);
         this.§+L§.graphics.moveTo(0,0);
         this.§+L§.graphics.beginFill(param4.color,this.§'!6§);
         this.§+L§.graphics.drawCircle(param1.x * this.§?!t§,param1.y * this.§?!t§,param2 * this.§?!t§);
         this.§+L§.graphics.endFill();
         this.§+L§.graphics.moveTo(param1.x * this.§?!t§,param1.y * this.§?!t§);
         this.§+L§.graphics.lineTo((param1.x + param3.x * param2) * this.§?!t§,(param1.y + param3.y * param2) * this.§?!t§);
      }
      
      public function §3"B§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§+L§.graphics.lineStyle(this.§1!I§,param3.color,this.§3S§);
         this.§+L§.graphics.moveTo(param1.x * this.§?!t§,param1.y * this.§?!t§);
         this.§+L§.graphics.lineTo(param2.x * this.§?!t§,param2.y * this.§?!t§);
      }
      
      public function §@"=§(param1:b2Transform) : void
      {
         this.§+L§.graphics.lineStyle(this.§1!I§,16711680,this.§3S§);
         this.§+L§.graphics.moveTo(param1.position.x * this.§?!t§,param1.position.y * this.§?!t§);
         this.§+L§.graphics.lineTo((param1.position.x + this.§^`§ * param1.R.col1.x) * this.§?!t§,(param1.position.y + this.§^`§ * param1.R.col1.y) * this.§?!t§);
         this.§+L§.graphics.lineStyle(this.§1!I§,65280,this.§3S§);
         this.§+L§.graphics.moveTo(param1.position.x * this.§?!t§,param1.position.y * this.§?!t§);
         this.§+L§.graphics.lineTo((param1.position.x + this.§^`§ * param1.R.col2.x) * this.§?!t§,(param1.position.y + this.§^`§ * param1.R.col2.y) * this.§?!t§);
      }
   }
}
