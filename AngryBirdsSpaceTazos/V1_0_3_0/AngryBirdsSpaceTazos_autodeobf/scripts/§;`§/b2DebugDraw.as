package §;`§
{
   import §8K§.b2Color;
   import §8K§.b2internal;
   import §[!f§.b2Transform;
   import §[!f§.b2Vec2;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §"J§:uint = 1;
      
      public static var §&!f§:uint = 2;
      
      public static var §-"-§:uint = 4;
      
      public static var §4H§:uint = 8;
      
      public static var §'>§:uint = 16;
      
      public static var §%!1§:uint = 32;
       
      
      private var §3!n§:uint;
      
      b2internal var §&§:Sprite;
      
      private var §"!K§:Number = 1.0;
      
      private var §[!0§:Number = 1.0;
      
      private var §"!%§:Number = 1.0;
      
      private var §-7§:Number = 1.0;
      
      private var §6F§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§3!n§ = 0;
      }
      
      public function §1!E§(param1:uint) : void
      {
         this.§3!n§ = param1;
      }
      
      public function §%8§() : uint
      {
         return this.§3!n§;
      }
      
      public function §"!a§(param1:uint) : void
      {
         this.§3!n§ |= param1;
      }
      
      public function §-!n§(param1:uint) : void
      {
         this.§3!n§ &= ~param1;
      }
      
      public function §2! §(param1:Sprite) : void
      {
         this.§&§ = param1;
      }
      
      public function §-!^§() : Sprite
      {
         return this.§&§;
      }
      
      public function §7"8§(param1:Number) : void
      {
         this.§"!K§ = param1;
      }
      
      public function §;!@§() : Number
      {
         return this.§"!K§;
      }
      
      public function §^!V§(param1:Number) : void
      {
         this.§[!0§ = param1;
      }
      
      public function §?!M§() : Number
      {
         return this.§[!0§;
      }
      
      public function §4!Q§(param1:Number) : void
      {
         this.§"!%§ = param1;
      }
      
      public function §^#§() : Number
      {
         return this.§"!%§;
      }
      
      public function §%d§(param1:Number) : void
      {
         this.§-7§ = param1;
      }
      
      public function §4L§() : Number
      {
         return this.§-7§;
      }
      
      public function §]T§(param1:Number) : void
      {
         this.§6F§ = param1;
      }
      
      public function §!"-§() : Number
      {
         return this.§6F§;
      }
      
      public function §2U§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§&§.graphics.lineStyle(this.§[!0§,param3.color,this.§"!%§);
         this.§&§.graphics.moveTo(param1[0].x * this.§"!K§,param1[0].y * this.§"!K§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§&§.graphics.lineTo(param1[_loc4_].x * this.§"!K§,param1[_loc4_].y * this.§"!K§);
            _loc4_++;
         }
         this.§&§.graphics.lineTo(param1[0].x * this.§"!K§,param1[0].y * this.§"!K§);
      }
      
      public function §1!B§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§&§.graphics.lineStyle(this.§[!0§,param3.color,this.§"!%§);
         this.§&§.graphics.moveTo(param1[0].x * this.§"!K§,param1[0].y * this.§"!K§);
         this.§&§.graphics.beginFill(param3.color,this.§-7§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§&§.graphics.lineTo(param1[_loc4_].x * this.§"!K§,param1[_loc4_].y * this.§"!K§);
            _loc4_++;
         }
         this.§&§.graphics.lineTo(param1[0].x * this.§"!K§,param1[0].y * this.§"!K§);
         this.§&§.graphics.endFill();
      }
      
      public function §"3§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§&§.graphics.lineStyle(this.§[!0§,param3.color,this.§"!%§);
         this.§&§.graphics.drawCircle(param1.x * this.§"!K§,param1.y * this.§"!K§,param2 * this.§"!K§);
      }
      
      public function §true§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§&§.graphics.lineStyle(this.§[!0§,param4.color,this.§"!%§);
         this.§&§.graphics.moveTo(0,0);
         this.§&§.graphics.beginFill(param4.color,this.§-7§);
         this.§&§.graphics.drawCircle(param1.x * this.§"!K§,param1.y * this.§"!K§,param2 * this.§"!K§);
         this.§&§.graphics.endFill();
         this.§&§.graphics.moveTo(param1.x * this.§"!K§,param1.y * this.§"!K§);
         this.§&§.graphics.lineTo((param1.x + param3.x * param2) * this.§"!K§,(param1.y + param3.y * param2) * this.§"!K§);
      }
      
      public function §2R§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§&§.graphics.lineStyle(this.§[!0§,param3.color,this.§"!%§);
         this.§&§.graphics.moveTo(param1.x * this.§"!K§,param1.y * this.§"!K§);
         this.§&§.graphics.lineTo(param2.x * this.§"!K§,param2.y * this.§"!K§);
      }
      
      public function §!c§(param1:b2Transform) : void
      {
         this.§&§.graphics.lineStyle(this.§[!0§,16711680,this.§"!%§);
         this.§&§.graphics.moveTo(param1.position.x * this.§"!K§,param1.position.y * this.§"!K§);
         this.§&§.graphics.lineTo((param1.position.x + this.§6F§ * param1.R.col1.x) * this.§"!K§,(param1.position.y + this.§6F§ * param1.R.col1.y) * this.§"!K§);
         this.§&§.graphics.lineStyle(this.§[!0§,65280,this.§"!%§);
         this.§&§.graphics.moveTo(param1.position.x * this.§"!K§,param1.position.y * this.§"!K§);
         this.§&§.graphics.lineTo((param1.position.x + this.§6F§ * param1.R.col2.x) * this.§"!K§,(param1.position.y + this.§6F§ * param1.R.col2.y) * this.§"!K§);
      }
   }
}
