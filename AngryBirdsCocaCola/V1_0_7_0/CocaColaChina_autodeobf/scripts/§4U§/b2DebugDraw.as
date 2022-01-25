package §4U§
{
   import §#!M§.b2Color;
   import §#!M§.b2internal;
   import §<!8§.b2Transform;
   import §<!8§.b2Vec2;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §?!5§:uint = 1;
      
      public static var §'!T§:uint = 2;
      
      public static var §?l§:uint = 4;
      
      public static var §2!O§:uint = 8;
      
      public static var §<!]§:uint = 16;
      
      public static var §0!'§:uint = 32;
       
      
      private var §=!a§:uint;
      
      b2internal var §"Q§:Sprite;
      
      private var §0!4§:Number = 1.0;
      
      private var §]!T§:Number = 1.0;
      
      private var §7!7§:Number = 1.0;
      
      private var §3!>§:Number = 1.0;
      
      private var § q§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§=!a§ = 0;
      }
      
      public function §`V§(param1:uint) : void
      {
         this.§=!a§ = param1;
      }
      
      public function § !H§() : uint
      {
         return this.§=!a§;
      }
      
      public function §^!9§(param1:uint) : void
      {
         this.§=!a§ |= param1;
      }
      
      public function §4E§(param1:uint) : void
      {
         this.§=!a§ &= ~param1;
      }
      
      public function §4?§(param1:Sprite) : void
      {
         this.§"Q§ = param1;
      }
      
      public function §`m§() : Sprite
      {
         return this.§"Q§;
      }
      
      public function §65§(param1:Number) : void
      {
         this.§0!4§ = param1;
      }
      
      public function §#e§() : Number
      {
         return this.§0!4§;
      }
      
      public function §6i§(param1:Number) : void
      {
         this.§]!T§ = param1;
      }
      
      public function §0!=§() : Number
      {
         return this.§]!T§;
      }
      
      public function §+!I§(param1:Number) : void
      {
         this.§7!7§ = param1;
      }
      
      public function §[!Z§() : Number
      {
         return this.§7!7§;
      }
      
      public function §>!8§(param1:Number) : void
      {
         this.§3!>§ = param1;
      }
      
      public function §?=§() : Number
      {
         return this.§3!>§;
      }
      
      public function §]!W§(param1:Number) : void
      {
         this.§ q§ = param1;
      }
      
      public function §>0§() : Number
      {
         return this.§ q§;
      }
      
      public function §+w§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§"Q§.graphics.lineStyle(this.§]!T§,param3.color,this.§7!7§);
         this.§"Q§.graphics.moveTo(param1[0].x * this.§0!4§,param1[0].y * this.§0!4§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§"Q§.graphics.lineTo(param1[_loc4_].x * this.§0!4§,param1[_loc4_].y * this.§0!4§);
            _loc4_++;
         }
         this.§"Q§.graphics.lineTo(param1[0].x * this.§0!4§,param1[0].y * this.§0!4§);
      }
      
      public function §]!7§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§"Q§.graphics.lineStyle(this.§]!T§,param3.color,this.§7!7§);
         this.§"Q§.graphics.moveTo(param1[0].x * this.§0!4§,param1[0].y * this.§0!4§);
         this.§"Q§.graphics.beginFill(param3.color,this.§3!>§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§"Q§.graphics.lineTo(param1[_loc4_].x * this.§0!4§,param1[_loc4_].y * this.§0!4§);
            _loc4_++;
         }
         this.§"Q§.graphics.lineTo(param1[0].x * this.§0!4§,param1[0].y * this.§0!4§);
         this.§"Q§.graphics.endFill();
      }
      
      public function §'!$§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§"Q§.graphics.lineStyle(this.§]!T§,param3.color,this.§7!7§);
         this.§"Q§.graphics.drawCircle(param1.x * this.§0!4§,param1.y * this.§0!4§,param2 * this.§0!4§);
      }
      
      public function §3!B§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§"Q§.graphics.lineStyle(this.§]!T§,param4.color,this.§7!7§);
         this.§"Q§.graphics.moveTo(0,0);
         this.§"Q§.graphics.beginFill(param4.color,this.§3!>§);
         this.§"Q§.graphics.drawCircle(param1.x * this.§0!4§,param1.y * this.§0!4§,param2 * this.§0!4§);
         this.§"Q§.graphics.endFill();
         this.§"Q§.graphics.moveTo(param1.x * this.§0!4§,param1.y * this.§0!4§);
         this.§"Q§.graphics.lineTo((param1.x + param3.x * param2) * this.§0!4§,(param1.y + param3.y * param2) * this.§0!4§);
      }
      
      public function §4_§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§"Q§.graphics.lineStyle(this.§]!T§,param3.color,this.§7!7§);
         this.§"Q§.graphics.moveTo(param1.x * this.§0!4§,param1.y * this.§0!4§);
         this.§"Q§.graphics.lineTo(param2.x * this.§0!4§,param2.y * this.§0!4§);
      }
      
      public function §7L§(param1:b2Transform) : void
      {
         this.§"Q§.graphics.lineStyle(this.§]!T§,16711680,this.§7!7§);
         this.§"Q§.graphics.moveTo(param1.position.x * this.§0!4§,param1.position.y * this.§0!4§);
         this.§"Q§.graphics.lineTo((param1.position.x + this.§ q§ * param1.R.col1.x) * this.§0!4§,(param1.position.y + this.§ q§ * param1.R.col1.y) * this.§0!4§);
         this.§"Q§.graphics.lineStyle(this.§]!T§,65280,this.§7!7§);
         this.§"Q§.graphics.moveTo(param1.position.x * this.§0!4§,param1.position.y * this.§0!4§);
         this.§"Q§.graphics.lineTo((param1.position.x + this.§ q§ * param1.R.col2.x) * this.§0!4§,(param1.position.y + this.§ q§ * param1.R.col2.y) * this.§0!4§);
      }
   }
}
