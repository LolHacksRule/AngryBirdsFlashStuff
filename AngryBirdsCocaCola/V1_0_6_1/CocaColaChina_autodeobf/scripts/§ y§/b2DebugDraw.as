package § y§
{
   import §54§.b2Color;
   import §54§.b2internal;
   import §;h§.b2Transform;
   import §;h§.b2Vec2;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §2h§:uint = 1;
      
      public static var §[!E§:uint = 2;
      
      public static var § !<§:uint = 4;
      
      public static var §2!H§:uint = 8;
      
      public static var §+9§:uint = 16;
      
      public static var §-!B§:uint = 32;
       
      
      private var §[j§:uint;
      
      b2internal var §^m§:Sprite;
      
      private var §">§:Number = 1.0;
      
      private var §7a§:Number = 1.0;
      
      private var §<=§:Number = 1.0;
      
      private var §+!!§:Number = 1.0;
      
      private var §#!§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§[j§ = 0;
      }
      
      public function §+!7§(param1:uint) : void
      {
         this.§[j§ = param1;
      }
      
      public function §%v§() : uint
      {
         return this.§[j§;
      }
      
      public function §&!Q§(param1:uint) : void
      {
         this.§[j§ |= param1;
      }
      
      public function § _§(param1:uint) : void
      {
         this.§[j§ &= ~param1;
      }
      
      public function §;K§(param1:Sprite) : void
      {
         this.§^m§ = param1;
      }
      
      public function § !4§() : Sprite
      {
         return this.§^m§;
      }
      
      public function §2;§(param1:Number) : void
      {
         this.§">§ = param1;
      }
      
      public function §1j§() : Number
      {
         return this.§">§;
      }
      
      public function §&!2§(param1:Number) : void
      {
         this.§7a§ = param1;
      }
      
      public function §>x§() : Number
      {
         return this.§7a§;
      }
      
      public function § !a§(param1:Number) : void
      {
         this.§<=§ = param1;
      }
      
      public function §[b§() : Number
      {
         return this.§<=§;
      }
      
      public function §5+§(param1:Number) : void
      {
         this.§+!!§ = param1;
      }
      
      public function §3!!§() : Number
      {
         return this.§+!!§;
      }
      
      public function §]6§(param1:Number) : void
      {
         this.§#!§ = param1;
      }
      
      public function §`W§() : Number
      {
         return this.§#!§;
      }
      
      public function § M§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§^m§.graphics.lineStyle(this.§7a§,param3.color,this.§<=§);
         this.§^m§.graphics.moveTo(param1[0].x * this.§">§,param1[0].y * this.§">§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§^m§.graphics.lineTo(param1[_loc4_].x * this.§">§,param1[_loc4_].y * this.§">§);
            _loc4_++;
         }
         this.§^m§.graphics.lineTo(param1[0].x * this.§">§,param1[0].y * this.§">§);
      }
      
      public function §5!W§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§^m§.graphics.lineStyle(this.§7a§,param3.color,this.§<=§);
         this.§^m§.graphics.moveTo(param1[0].x * this.§">§,param1[0].y * this.§">§);
         this.§^m§.graphics.beginFill(param3.color,this.§+!!§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§^m§.graphics.lineTo(param1[_loc4_].x * this.§">§,param1[_loc4_].y * this.§">§);
            _loc4_++;
         }
         this.§^m§.graphics.lineTo(param1[0].x * this.§">§,param1[0].y * this.§">§);
         this.§^m§.graphics.endFill();
      }
      
      public function §&h§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§^m§.graphics.lineStyle(this.§7a§,param3.color,this.§<=§);
         this.§^m§.graphics.drawCircle(param1.x * this.§">§,param1.y * this.§">§,param2 * this.§">§);
      }
      
      public function §[!9§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§^m§.graphics.lineStyle(this.§7a§,param4.color,this.§<=§);
         this.§^m§.graphics.moveTo(0,0);
         this.§^m§.graphics.beginFill(param4.color,this.§+!!§);
         this.§^m§.graphics.drawCircle(param1.x * this.§">§,param1.y * this.§">§,param2 * this.§">§);
         this.§^m§.graphics.endFill();
         this.§^m§.graphics.moveTo(param1.x * this.§">§,param1.y * this.§">§);
         this.§^m§.graphics.lineTo((param1.x + param3.x * param2) * this.§">§,(param1.y + param3.y * param2) * this.§">§);
      }
      
      public function § >§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§^m§.graphics.lineStyle(this.§7a§,param3.color,this.§<=§);
         this.§^m§.graphics.moveTo(param1.x * this.§">§,param1.y * this.§">§);
         this.§^m§.graphics.lineTo(param2.x * this.§">§,param2.y * this.§">§);
      }
      
      public function §8!U§(param1:b2Transform) : void
      {
         this.§^m§.graphics.lineStyle(this.§7a§,16711680,this.§<=§);
         this.§^m§.graphics.moveTo(param1.position.x * this.§">§,param1.position.y * this.§">§);
         this.§^m§.graphics.lineTo((param1.position.x + this.§#!§ * param1.R.col1.x) * this.§">§,(param1.position.y + this.§#!§ * param1.R.col1.y) * this.§">§);
         this.§^m§.graphics.lineStyle(this.§7a§,65280,this.§<=§);
         this.§^m§.graphics.moveTo(param1.position.x * this.§">§,param1.position.y * this.§">§);
         this.§^m§.graphics.lineTo((param1.position.x + this.§#!§ * param1.R.col2.x) * this.§">§,(param1.position.y + this.§#!§ * param1.R.col2.y) * this.§">§);
      }
   }
}
