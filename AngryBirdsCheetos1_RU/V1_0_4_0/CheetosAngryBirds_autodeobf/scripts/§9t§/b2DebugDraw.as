package §9t§
{
   import §4! §.b2Color;
   import §4! §.b2internal;
   import §^q§.b2Transform;
   import §^q§.b2Vec2;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §-r§:uint = 1;
      
      public static var §7t§:uint = 2;
      
      public static var §[x§:uint = 4;
      
      public static var §2$§:uint = 8;
      
      public static var §`H§:uint = 16;
      
      public static var §=!0§:uint = 32;
       
      
      private var §,!a§:uint;
      
      b2internal var §1X§:Sprite;
      
      private var §8!Y§:Number = 1.0;
      
      private var §4q§:Number = 1.0;
      
      private var §>$§:Number = 1.0;
      
      private var §?a§:Number = 1.0;
      
      private var §?$§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§,!a§ = 0;
      }
      
      public function §0j§(param1:uint) : void
      {
         this.§,!a§ = param1;
      }
      
      public function §0!T§() : uint
      {
         return this.§,!a§;
      }
      
      public function § !P§(param1:uint) : void
      {
         this.§,!a§ |= param1;
      }
      
      public function §[<§(param1:uint) : void
      {
         this.§,!a§ &= ~param1;
      }
      
      public function §&+§(param1:Sprite) : void
      {
         this.§1X§ = param1;
      }
      
      public function §'E§() : Sprite
      {
         return this.§1X§;
      }
      
      public function §?!-§(param1:Number) : void
      {
         this.§8!Y§ = param1;
      }
      
      public function §2y§() : Number
      {
         return this.§8!Y§;
      }
      
      public function §#A§(param1:Number) : void
      {
         this.§4q§ = param1;
      }
      
      public function §"!#§() : Number
      {
         return this.§4q§;
      }
      
      public function §<!Y§(param1:Number) : void
      {
         this.§>$§ = param1;
      }
      
      public function §>!P§() : Number
      {
         return this.§>$§;
      }
      
      public function §!n§(param1:Number) : void
      {
         this.§?a§ = param1;
      }
      
      public function §4T§() : Number
      {
         return this.§?a§;
      }
      
      public function §case §(param1:Number) : void
      {
         this.§?$§ = param1;
      }
      
      public function §?L§() : Number
      {
         return this.§?$§;
      }
      
      public function §throw§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§1X§.graphics.lineStyle(this.§4q§,param3.color,this.§>$§);
         this.§1X§.graphics.moveTo(param1[0].x * this.§8!Y§,param1[0].y * this.§8!Y§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§1X§.graphics.lineTo(param1[_loc4_].x * this.§8!Y§,param1[_loc4_].y * this.§8!Y§);
            _loc4_++;
         }
         this.§1X§.graphics.lineTo(param1[0].x * this.§8!Y§,param1[0].y * this.§8!Y§);
      }
      
      public function §9!&§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§1X§.graphics.lineStyle(this.§4q§,param3.color,this.§>$§);
         this.§1X§.graphics.moveTo(param1[0].x * this.§8!Y§,param1[0].y * this.§8!Y§);
         this.§1X§.graphics.beginFill(param3.color,this.§?a§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§1X§.graphics.lineTo(param1[_loc4_].x * this.§8!Y§,param1[_loc4_].y * this.§8!Y§);
            _loc4_++;
         }
         this.§1X§.graphics.lineTo(param1[0].x * this.§8!Y§,param1[0].y * this.§8!Y§);
         this.§1X§.graphics.endFill();
      }
      
      public function §'!,§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§1X§.graphics.lineStyle(this.§4q§,param3.color,this.§>$§);
         this.§1X§.graphics.drawCircle(param1.x * this.§8!Y§,param1.y * this.§8!Y§,param2 * this.§8!Y§);
      }
      
      public function §7#§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§1X§.graphics.lineStyle(this.§4q§,param4.color,this.§>$§);
         this.§1X§.graphics.moveTo(0,0);
         this.§1X§.graphics.beginFill(param4.color,this.§?a§);
         this.§1X§.graphics.drawCircle(param1.x * this.§8!Y§,param1.y * this.§8!Y§,param2 * this.§8!Y§);
         this.§1X§.graphics.endFill();
         this.§1X§.graphics.moveTo(param1.x * this.§8!Y§,param1.y * this.§8!Y§);
         this.§1X§.graphics.lineTo((param1.x + param3.x * param2) * this.§8!Y§,(param1.y + param3.y * param2) * this.§8!Y§);
      }
      
      public function §!!J§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§1X§.graphics.lineStyle(this.§4q§,param3.color,this.§>$§);
         this.§1X§.graphics.moveTo(param1.x * this.§8!Y§,param1.y * this.§8!Y§);
         this.§1X§.graphics.lineTo(param2.x * this.§8!Y§,param2.y * this.§8!Y§);
      }
      
      public function §&O§(param1:b2Transform) : void
      {
         this.§1X§.graphics.lineStyle(this.§4q§,16711680,this.§>$§);
         this.§1X§.graphics.moveTo(param1.position.x * this.§8!Y§,param1.position.y * this.§8!Y§);
         this.§1X§.graphics.lineTo((param1.position.x + this.§?$§ * param1.R.col1.x) * this.§8!Y§,(param1.position.y + this.§?$§ * param1.R.col1.y) * this.§8!Y§);
         this.§1X§.graphics.lineStyle(this.§4q§,65280,this.§>$§);
         this.§1X§.graphics.moveTo(param1.position.x * this.§8!Y§,param1.position.y * this.§8!Y§);
         this.§1X§.graphics.lineTo((param1.position.x + this.§?$§ * param1.R.col2.x) * this.§8!Y§,(param1.position.y + this.§?$§ * param1.R.col2.y) * this.§8!Y§);
      }
   }
}
