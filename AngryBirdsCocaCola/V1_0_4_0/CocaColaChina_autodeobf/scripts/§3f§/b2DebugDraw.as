package §3f§
{
   import §&!L§.b2Transform;
   import §&!L§.b2Vec2;
   import §7!C§.b2Color;
   import §7!C§.b2internal;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §5!+§:uint = 1;
      
      public static var §&!N§:uint = 2;
      
      public static var §8!W§:uint = 4;
      
      public static var §%!4§:uint = 8;
      
      public static var §`Z§:uint = 16;
      
      public static var §9!3§:uint = 32;
       
      
      private var § q§:uint;
      
      b2internal var §?!5§:Sprite;
      
      private var §'!T§:Number = 1.0;
      
      private var §?l§:Number = 1.0;
      
      private var §2!O§:Number = 1.0;
      
      private var §<!]§:Number = 1.0;
      
      private var §0!'§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§ q§ = 0;
      }
      
      public function §65§(param1:uint) : void
      {
         this.§ q§ = param1;
      }
      
      public function §#e§() : uint
      {
         return this.§ q§;
      }
      
      public function §6i§(param1:uint) : void
      {
         this.§ q§ |= param1;
      }
      
      public function §0!=§(param1:uint) : void
      {
         this.§ q§ &= ~param1;
      }
      
      public function §+!I§(param1:Sprite) : void
      {
         this.§?!5§ = param1;
      }
      
      public function §[!Z§() : Sprite
      {
         return this.§?!5§;
      }
      
      public function §>!8§(param1:Number) : void
      {
         this.§'!T§ = param1;
      }
      
      public function §?=§() : Number
      {
         return this.§'!T§;
      }
      
      public function §]!W§(param1:Number) : void
      {
         this.§?l§ = param1;
      }
      
      public function §>0§() : Number
      {
         return this.§?l§;
      }
      
      public function §+w§(param1:Number) : void
      {
         this.§2!O§ = param1;
      }
      
      public function §]!7§() : Number
      {
         return this.§2!O§;
      }
      
      public function §'!$§(param1:Number) : void
      {
         this.§<!]§ = param1;
      }
      
      public function §3!B§() : Number
      {
         return this.§<!]§;
      }
      
      public function §4_§(param1:Number) : void
      {
         this.§0!'§ = param1;
      }
      
      public function §7L§() : Number
      {
         return this.§0!'§;
      }
      
      public function §=!a§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§?!5§.graphics.lineStyle(this.§?l§,param3.color,this.§2!O§);
         this.§?!5§.graphics.moveTo(param1[0].x * this.§'!T§,param1[0].y * this.§'!T§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§?!5§.graphics.lineTo(param1[_loc4_].x * this.§'!T§,param1[_loc4_].y * this.§'!T§);
            _loc4_++;
         }
         this.§?!5§.graphics.lineTo(param1[0].x * this.§'!T§,param1[0].y * this.§'!T§);
      }
      
      public function §"Q§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§?!5§.graphics.lineStyle(this.§?l§,param3.color,this.§2!O§);
         this.§?!5§.graphics.moveTo(param1[0].x * this.§'!T§,param1[0].y * this.§'!T§);
         this.§?!5§.graphics.beginFill(param3.color,this.§<!]§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§?!5§.graphics.lineTo(param1[_loc4_].x * this.§'!T§,param1[_loc4_].y * this.§'!T§);
            _loc4_++;
         }
         this.§?!5§.graphics.lineTo(param1[0].x * this.§'!T§,param1[0].y * this.§'!T§);
         this.§?!5§.graphics.endFill();
      }
      
      public function §0!4§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§?!5§.graphics.lineStyle(this.§?l§,param3.color,this.§2!O§);
         this.§?!5§.graphics.drawCircle(param1.x * this.§'!T§,param1.y * this.§'!T§,param2 * this.§'!T§);
      }
      
      public function §]!T§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§?!5§.graphics.lineStyle(this.§?l§,param4.color,this.§2!O§);
         this.§?!5§.graphics.moveTo(0,0);
         this.§?!5§.graphics.beginFill(param4.color,this.§<!]§);
         this.§?!5§.graphics.drawCircle(param1.x * this.§'!T§,param1.y * this.§'!T§,param2 * this.§'!T§);
         this.§?!5§.graphics.endFill();
         this.§?!5§.graphics.moveTo(param1.x * this.§'!T§,param1.y * this.§'!T§);
         this.§?!5§.graphics.lineTo((param1.x + param3.x * param2) * this.§'!T§,(param1.y + param3.y * param2) * this.§'!T§);
      }
      
      public function §7!7§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§?!5§.graphics.lineStyle(this.§?l§,param3.color,this.§2!O§);
         this.§?!5§.graphics.moveTo(param1.x * this.§'!T§,param1.y * this.§'!T§);
         this.§?!5§.graphics.lineTo(param2.x * this.§'!T§,param2.y * this.§'!T§);
      }
      
      public function §3!>§(param1:b2Transform) : void
      {
         this.§?!5§.graphics.lineStyle(this.§?l§,16711680,this.§2!O§);
         this.§?!5§.graphics.moveTo(param1.position.x * this.§'!T§,param1.position.y * this.§'!T§);
         this.§?!5§.graphics.lineTo((param1.position.x + this.§0!'§ * param1.R.col1.x) * this.§'!T§,(param1.position.y + this.§0!'§ * param1.R.col1.y) * this.§'!T§);
         this.§?!5§.graphics.lineStyle(this.§?l§,65280,this.§2!O§);
         this.§?!5§.graphics.moveTo(param1.position.x * this.§'!T§,param1.position.y * this.§'!T§);
         this.§?!5§.graphics.lineTo((param1.position.x + this.§0!'§ * param1.R.col2.x) * this.§'!T§,(param1.position.y + this.§0!'§ * param1.R.col2.y) * this.§'!T§);
      }
   }
}
