package §+S§
{
   import §2"=§.b2Transform;
   import §2"=§.b2Vec2;
   import §=o§.b2Color;
   import §=o§.b2internal;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §9<§:uint = 1;
      
      public static var §=f§:uint = 2;
      
      public static var § " §:uint = 4;
      
      public static var §^!$§:uint = 8;
      
      public static var §4!=§:uint = 16;
      
      public static var §#V§:uint = 32;
       
      
      private var §2$§:uint;
      
      b2internal var §'y§:Sprite;
      
      private var §^s§:Number = 1.0;
      
      private var §`!M§:Number = 1.0;
      
      private var §;=§:Number = 1.0;
      
      private var §0u§:Number = 1.0;
      
      private var §,!7§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§2$§ = 0;
      }
      
      public function §8!O§(param1:uint) : void
      {
         this.§2$§ = param1;
      }
      
      public function §8!0§() : uint
      {
         return this.§2$§;
      }
      
      public function §#!#§(param1:uint) : void
      {
         this.§2$§ |= param1;
      }
      
      public function §`!?§(param1:uint) : void
      {
         this.§2$§ &= ~param1;
      }
      
      public function §-i§(param1:Sprite) : void
      {
         this.§'y§ = param1;
      }
      
      public function §8x§() : Sprite
      {
         return this.§'y§;
      }
      
      public function § t§(param1:Number) : void
      {
         this.§^s§ = param1;
      }
      
      public function §-"2§() : Number
      {
         return this.§^s§;
      }
      
      public function §3!5§(param1:Number) : void
      {
         this.§`!M§ = param1;
      }
      
      public function §;!n§() : Number
      {
         return this.§`!M§;
      }
      
      public function §"+§(param1:Number) : void
      {
         this.§;=§ = param1;
      }
      
      public function §6!e§() : Number
      {
         return this.§;=§;
      }
      
      public function §<!a§(param1:Number) : void
      {
         this.§0u§ = param1;
      }
      
      public function §[!§() : Number
      {
         return this.§0u§;
      }
      
      public function §^;§(param1:Number) : void
      {
         this.§,!7§ = param1;
      }
      
      public function §#!_§() : Number
      {
         return this.§,!7§;
      }
      
      public function §^g§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§'y§.graphics.lineStyle(this.§`!M§,param3.color,this.§;=§);
         this.§'y§.graphics.moveTo(param1[0].x * this.§^s§,param1[0].y * this.§^s§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§'y§.graphics.lineTo(param1[_loc4_].x * this.§^s§,param1[_loc4_].y * this.§^s§);
            _loc4_++;
         }
         this.§'y§.graphics.lineTo(param1[0].x * this.§^s§,param1[0].y * this.§^s§);
      }
      
      public function §+r§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§'y§.graphics.lineStyle(this.§`!M§,param3.color,this.§;=§);
         this.§'y§.graphics.moveTo(param1[0].x * this.§^s§,param1[0].y * this.§^s§);
         this.§'y§.graphics.beginFill(param3.color,this.§0u§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§'y§.graphics.lineTo(param1[_loc4_].x * this.§^s§,param1[_loc4_].y * this.§^s§);
            _loc4_++;
         }
         this.§'y§.graphics.lineTo(param1[0].x * this.§^s§,param1[0].y * this.§^s§);
         this.§'y§.graphics.endFill();
      }
      
      public function §0!C§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§'y§.graphics.lineStyle(this.§`!M§,param3.color,this.§;=§);
         this.§'y§.graphics.drawCircle(param1.x * this.§^s§,param1.y * this.§^s§,param2 * this.§^s§);
      }
      
      public function §`!#§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§'y§.graphics.lineStyle(this.§`!M§,param4.color,this.§;=§);
         this.§'y§.graphics.moveTo(0,0);
         this.§'y§.graphics.beginFill(param4.color,this.§0u§);
         this.§'y§.graphics.drawCircle(param1.x * this.§^s§,param1.y * this.§^s§,param2 * this.§^s§);
         this.§'y§.graphics.endFill();
         this.§'y§.graphics.moveTo(param1.x * this.§^s§,param1.y * this.§^s§);
         this.§'y§.graphics.lineTo((param1.x + param3.x * param2) * this.§^s§,(param1.y + param3.y * param2) * this.§^s§);
      }
      
      public function §3!`§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§'y§.graphics.lineStyle(this.§`!M§,param3.color,this.§;=§);
         this.§'y§.graphics.moveTo(param1.x * this.§^s§,param1.y * this.§^s§);
         this.§'y§.graphics.lineTo(param2.x * this.§^s§,param2.y * this.§^s§);
      }
      
      public function §,S§(param1:b2Transform) : void
      {
         this.§'y§.graphics.lineStyle(this.§`!M§,16711680,this.§;=§);
         this.§'y§.graphics.moveTo(param1.position.x * this.§^s§,param1.position.y * this.§^s§);
         this.§'y§.graphics.lineTo((param1.position.x + this.§,!7§ * param1.R.col1.x) * this.§^s§,(param1.position.y + this.§,!7§ * param1.R.col1.y) * this.§^s§);
         this.§'y§.graphics.lineStyle(this.§`!M§,65280,this.§;=§);
         this.§'y§.graphics.moveTo(param1.position.x * this.§^s§,param1.position.y * this.§^s§);
         this.§'y§.graphics.lineTo((param1.position.x + this.§,!7§ * param1.R.col2.x) * this.§^s§,(param1.position.y + this.§,!7§ * param1.R.col2.y) * this.§^s§);
      }
   }
}
