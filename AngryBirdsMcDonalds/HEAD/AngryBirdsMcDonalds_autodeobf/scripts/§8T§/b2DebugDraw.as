package §8T§
{
   import §+S§.b2Transform;
   import §+S§.b2Vec2;
   import §?!n§.b2Color;
   import §?!n§.b2internal;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §;!2§:uint = 1;
      
      public static var §-!p§:uint = 2;
      
      public static var §;7§:uint = 4;
      
      public static var §8S§:uint = 8;
      
      public static var §0!C§:uint = 16;
      
      public static var §&J§:uint = 32;
       
      
      private var §'^§:uint;
      
      b2internal var §%!#§:Sprite;
      
      private var §?H§:Number = 1.0;
      
      private var §[!]§:Number = 1.0;
      
      private var §&q§:Number = 1.0;
      
      private var §@!_§:Number = 1.0;
      
      private var §1m§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§'^§ = 0;
      }
      
      public function §0h§(param1:uint) : void
      {
         this.§'^§ = param1;
      }
      
      public function §=!7§() : uint
      {
         return this.§'^§;
      }
      
      public function §8K§(param1:uint) : void
      {
         this.§'^§ |= param1;
      }
      
      public function §?!?§(param1:uint) : void
      {
         this.§'^§ &= ~param1;
      }
      
      public function §?!8§(param1:Sprite) : void
      {
         this.§%!#§ = param1;
      }
      
      public function §?w§() : Sprite
      {
         return this.§%!#§;
      }
      
      public function §#!`§(param1:Number) : void
      {
         this.§?H§ = param1;
      }
      
      public function §!!m§() : Number
      {
         return this.§?H§;
      }
      
      public function §=! §(param1:Number) : void
      {
         this.§[!]§ = param1;
      }
      
      public function §<!,§() : Number
      {
         return this.§[!]§;
      }
      
      public function §=t§(param1:Number) : void
      {
         this.§&q§ = param1;
      }
      
      public function §#!;§() : Number
      {
         return this.§&q§;
      }
      
      public function §]Q§(param1:Number) : void
      {
         this.§@!_§ = param1;
      }
      
      public function §+M§() : Number
      {
         return this.§@!_§;
      }
      
      public function §6!A§(param1:Number) : void
      {
         this.§1m§ = param1;
      }
      
      public function §=!d§() : Number
      {
         return this.§1m§;
      }
      
      public function §;!_§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§%!#§.graphics.lineStyle(this.§[!]§,param3.color,this.§&q§);
         this.§%!#§.graphics.moveTo(param1[0].x * this.§?H§,param1[0].y * this.§?H§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§%!#§.graphics.lineTo(param1[_loc4_].x * this.§?H§,param1[_loc4_].y * this.§?H§);
            _loc4_++;
         }
         this.§%!#§.graphics.lineTo(param1[0].x * this.§?H§,param1[0].y * this.§?H§);
      }
      
      public function §'!j§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§%!#§.graphics.lineStyle(this.§[!]§,param3.color,this.§&q§);
         this.§%!#§.graphics.moveTo(param1[0].x * this.§?H§,param1[0].y * this.§?H§);
         this.§%!#§.graphics.beginFill(param3.color,this.§@!_§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§%!#§.graphics.lineTo(param1[_loc4_].x * this.§?H§,param1[_loc4_].y * this.§?H§);
            _loc4_++;
         }
         this.§%!#§.graphics.lineTo(param1[0].x * this.§?H§,param1[0].y * this.§?H§);
         this.§%!#§.graphics.endFill();
      }
      
      public function §8!V§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§%!#§.graphics.lineStyle(this.§[!]§,param3.color,this.§&q§);
         this.§%!#§.graphics.drawCircle(param1.x * this.§?H§,param1.y * this.§?H§,param2 * this.§?H§);
      }
      
      public function §4!-§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§%!#§.graphics.lineStyle(this.§[!]§,param4.color,this.§&q§);
         this.§%!#§.graphics.moveTo(0,0);
         this.§%!#§.graphics.beginFill(param4.color,this.§@!_§);
         this.§%!#§.graphics.drawCircle(param1.x * this.§?H§,param1.y * this.§?H§,param2 * this.§?H§);
         this.§%!#§.graphics.endFill();
         this.§%!#§.graphics.moveTo(param1.x * this.§?H§,param1.y * this.§?H§);
         this.§%!#§.graphics.lineTo((param1.x + param3.x * param2) * this.§?H§,(param1.y + param3.y * param2) * this.§?H§);
      }
      
      public function §1!_§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§%!#§.graphics.lineStyle(this.§[!]§,param3.color,this.§&q§);
         this.§%!#§.graphics.moveTo(param1.x * this.§?H§,param1.y * this.§?H§);
         this.§%!#§.graphics.lineTo(param2.x * this.§?H§,param2.y * this.§?H§);
      }
      
      public function §2!?§(param1:b2Transform) : void
      {
         this.§%!#§.graphics.lineStyle(this.§[!]§,16711680,this.§&q§);
         this.§%!#§.graphics.moveTo(param1.position.x * this.§?H§,param1.position.y * this.§?H§);
         this.§%!#§.graphics.lineTo((param1.position.x + this.§1m§ * param1.R.col1.x) * this.§?H§,(param1.position.y + this.§1m§ * param1.R.col1.y) * this.§?H§);
         this.§%!#§.graphics.lineStyle(this.§[!]§,65280,this.§&q§);
         this.§%!#§.graphics.moveTo(param1.position.x * this.§?H§,param1.position.y * this.§?H§);
         this.§%!#§.graphics.lineTo((param1.position.x + this.§1m§ * param1.R.col2.x) * this.§?H§,(param1.position.y + this.§1m§ * param1.R.col2.y) * this.§?H§);
      }
   }
}
