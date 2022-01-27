package §^!Z§
{
   import § !_§.b2Transform;
   import § !_§.b2Vec2;
   import §+&§.b2Color;
   import §+&§.b2internal;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §#!9§:uint = 1;
      
      public static var §=!`§:uint = 2;
      
      public static var §9r§:uint = 4;
      
      public static var § V§:uint = 8;
      
      public static var §=;§:uint = 16;
      
      public static var §4!!§:uint = 32;
       
      
      private var § I§:uint;
      
      b2internal var §4!'§:Sprite;
      
      private var §5t§:Number = 1.0;
      
      private var §]!P§:Number = 1.0;
      
      private var §1i§:Number = 1.0;
      
      private var §4!"§:Number = 1.0;
      
      private var §5Y§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§ I§ = 0;
      }
      
      public function §9y§(param1:uint) : void
      {
         this.§ I§ = param1;
      }
      
      public function §<!§() : uint
      {
         return this.§ I§;
      }
      
      public function §>!W§(param1:uint) : void
      {
         this.§ I§ |= param1;
      }
      
      public function §<!5§(param1:uint) : void
      {
         this.§ I§ &= ~param1;
      }
      
      public function §?!+§(param1:Sprite) : void
      {
         this.§4!'§ = param1;
      }
      
      public function §+!O§() : Sprite
      {
         return this.§4!'§;
      }
      
      public function §'X§(param1:Number) : void
      {
         this.§5t§ = param1;
      }
      
      public function §>!]§() : Number
      {
         return this.§5t§;
      }
      
      public function §>i§(param1:Number) : void
      {
         this.§]!P§ = param1;
      }
      
      public function §8!_§() : Number
      {
         return this.§]!P§;
      }
      
      public function §8!6§(param1:Number) : void
      {
         this.§1i§ = param1;
      }
      
      public function §^!C§() : Number
      {
         return this.§1i§;
      }
      
      public function §8!a§(param1:Number) : void
      {
         this.§4!"§ = param1;
      }
      
      public function §,!+§() : Number
      {
         return this.§4!"§;
      }
      
      public function §1!a§(param1:Number) : void
      {
         this.§5Y§ = param1;
      }
      
      public function §%!J§() : Number
      {
         return this.§5Y§;
      }
      
      public function §[H§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§4!'§.graphics.lineStyle(this.§]!P§,param3.color,this.§1i§);
         this.§4!'§.graphics.moveTo(param1[0].x * this.§5t§,param1[0].y * this.§5t§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§4!'§.graphics.lineTo(param1[_loc4_].x * this.§5t§,param1[_loc4_].y * this.§5t§);
            _loc4_++;
         }
         this.§4!'§.graphics.lineTo(param1[0].x * this.§5t§,param1[0].y * this.§5t§);
      }
      
      public function §+Q§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§4!'§.graphics.lineStyle(this.§]!P§,param3.color,this.§1i§);
         this.§4!'§.graphics.moveTo(param1[0].x * this.§5t§,param1[0].y * this.§5t§);
         this.§4!'§.graphics.beginFill(param3.color,this.§4!"§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§4!'§.graphics.lineTo(param1[_loc4_].x * this.§5t§,param1[_loc4_].y * this.§5t§);
            _loc4_++;
         }
         this.§4!'§.graphics.lineTo(param1[0].x * this.§5t§,param1[0].y * this.§5t§);
         this.§4!'§.graphics.endFill();
      }
      
      public function §>!Q§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§4!'§.graphics.lineStyle(this.§]!P§,param3.color,this.§1i§);
         this.§4!'§.graphics.drawCircle(param1.x * this.§5t§,param1.y * this.§5t§,param2 * this.§5t§);
      }
      
      public function §`f§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§4!'§.graphics.lineStyle(this.§]!P§,param4.color,this.§1i§);
         this.§4!'§.graphics.moveTo(0,0);
         this.§4!'§.graphics.beginFill(param4.color,this.§4!"§);
         this.§4!'§.graphics.drawCircle(param1.x * this.§5t§,param1.y * this.§5t§,param2 * this.§5t§);
         this.§4!'§.graphics.endFill();
         this.§4!'§.graphics.moveTo(param1.x * this.§5t§,param1.y * this.§5t§);
         this.§4!'§.graphics.lineTo((param1.x + param3.x * param2) * this.§5t§,(param1.y + param3.y * param2) * this.§5t§);
      }
      
      public function §5?§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§4!'§.graphics.lineStyle(this.§]!P§,param3.color,this.§1i§);
         this.§4!'§.graphics.moveTo(param1.x * this.§5t§,param1.y * this.§5t§);
         this.§4!'§.graphics.lineTo(param2.x * this.§5t§,param2.y * this.§5t§);
      }
      
      public function §-!6§(param1:b2Transform) : void
      {
         this.§4!'§.graphics.lineStyle(this.§]!P§,16711680,this.§1i§);
         this.§4!'§.graphics.moveTo(param1.position.x * this.§5t§,param1.position.y * this.§5t§);
         this.§4!'§.graphics.lineTo((param1.position.x + this.§5Y§ * param1.R.col1.x) * this.§5t§,(param1.position.y + this.§5Y§ * param1.R.col1.y) * this.§5t§);
         this.§4!'§.graphics.lineStyle(this.§]!P§,65280,this.§1i§);
         this.§4!'§.graphics.moveTo(param1.position.x * this.§5t§,param1.position.y * this.§5t§);
         this.§4!'§.graphics.lineTo((param1.position.x + this.§5Y§ * param1.R.col2.x) * this.§5t§,(param1.position.y + this.§5Y§ * param1.R.col2.y) * this.§5t§);
      }
   }
}
