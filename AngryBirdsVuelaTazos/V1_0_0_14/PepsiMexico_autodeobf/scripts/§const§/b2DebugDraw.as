package §const§
{
   import §_-4n§.b2Transform;
   import §_-4n§.b2Vec2;
   import §_-bW§.b2Color;
   import §_-bW§.b2internal;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §_-FV§:uint = 1;
      
      public static var §_-mH§:uint = 2;
      
      public static var §_-15§:uint = 4;
      
      public static var §_-ml§:uint = 8;
      
      public static var §_-Yc§:uint = 16;
      
      public static var §_-QH§:uint = 32;
       
      
      private var §_-ff§:uint;
      
      b2internal var §_-6x§:Sprite;
      
      private var §_-RR§:Number = 1.0;
      
      private var §_-QP§:Number = 1.0;
      
      private var §_-4D§:Number = 1.0;
      
      private var §_-1Q§:Number = 1.0;
      
      private var §_-i6§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§_-ff§ = 0;
      }
      
      public function §_-GQ§(param1:uint) : void
      {
         this.§_-ff§ = param1;
      }
      
      public function §_-OA§() : uint
      {
         return this.§_-ff§;
      }
      
      public function §_-g8§(param1:uint) : void
      {
         this.§_-ff§ |= param1;
      }
      
      public function §_-bH§(param1:uint) : void
      {
         this.§_-ff§ &= ~param1;
      }
      
      public function §_-4N§(param1:Sprite) : void
      {
         this.§_-6x§ = param1;
      }
      
      public function §_-6J§() : Sprite
      {
         return this.§_-6x§;
      }
      
      public function §_-a1§(param1:Number) : void
      {
         this.§_-RR§ = param1;
      }
      
      public function §_-et§() : Number
      {
         return this.§_-RR§;
      }
      
      public function §_-vC§(param1:Number) : void
      {
         this.§_-QP§ = param1;
      }
      
      public function §_-uQ§() : Number
      {
         return this.§_-QP§;
      }
      
      public function §_-I5§(param1:Number) : void
      {
         this.§_-4D§ = param1;
      }
      
      public function §_-2J§() : Number
      {
         return this.§_-4D§;
      }
      
      public function §_-SY§(param1:Number) : void
      {
         this.§_-1Q§ = param1;
      }
      
      public function §_-yV§() : Number
      {
         return this.§_-1Q§;
      }
      
      public function §_-Dm§(param1:Number) : void
      {
         this.§_-i6§ = param1;
      }
      
      public function §_-v7§() : Number
      {
         return this.§_-i6§;
      }
      
      public function §_-2t§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§_-6x§.graphics.lineStyle(this.§_-QP§,param3.color,this.§_-4D§);
         this.§_-6x§.graphics.moveTo(param1[0].x * this.§_-RR§,param1[0].y * this.§_-RR§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§_-6x§.graphics.lineTo(param1[_loc4_].x * this.§_-RR§,param1[_loc4_].y * this.§_-RR§);
            _loc4_++;
         }
         this.§_-6x§.graphics.lineTo(param1[0].x * this.§_-RR§,param1[0].y * this.§_-RR§);
      }
      
      public function §_-aV§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§_-6x§.graphics.lineStyle(this.§_-QP§,param3.color,this.§_-4D§);
         this.§_-6x§.graphics.moveTo(param1[0].x * this.§_-RR§,param1[0].y * this.§_-RR§);
         this.§_-6x§.graphics.beginFill(param3.color,this.§_-1Q§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§_-6x§.graphics.lineTo(param1[_loc4_].x * this.§_-RR§,param1[_loc4_].y * this.§_-RR§);
            _loc4_++;
         }
         this.§_-6x§.graphics.lineTo(param1[0].x * this.§_-RR§,param1[0].y * this.§_-RR§);
         this.§_-6x§.graphics.endFill();
      }
      
      public function §_-iF§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§_-6x§.graphics.lineStyle(this.§_-QP§,param3.color,this.§_-4D§);
         this.§_-6x§.graphics.drawCircle(param1.x * this.§_-RR§,param1.y * this.§_-RR§,param2 * this.§_-RR§);
      }
      
      public function §_-VX§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§_-6x§.graphics.lineStyle(this.§_-QP§,param4.color,this.§_-4D§);
         this.§_-6x§.graphics.moveTo(0,0);
         this.§_-6x§.graphics.beginFill(param4.color,this.§_-1Q§);
         this.§_-6x§.graphics.drawCircle(param1.x * this.§_-RR§,param1.y * this.§_-RR§,param2 * this.§_-RR§);
         this.§_-6x§.graphics.endFill();
         this.§_-6x§.graphics.moveTo(param1.x * this.§_-RR§,param1.y * this.§_-RR§);
         this.§_-6x§.graphics.lineTo((param1.x + param3.x * param2) * this.§_-RR§,(param1.y + param3.y * param2) * this.§_-RR§);
      }
      
      public function §_-hH§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§_-6x§.graphics.lineStyle(this.§_-QP§,param3.color,this.§_-4D§);
         this.§_-6x§.graphics.moveTo(param1.x * this.§_-RR§,param1.y * this.§_-RR§);
         this.§_-6x§.graphics.lineTo(param2.x * this.§_-RR§,param2.y * this.§_-RR§);
      }
      
      public function §_-ie§(param1:b2Transform) : void
      {
         this.§_-6x§.graphics.lineStyle(this.§_-QP§,16711680,this.§_-4D§);
         this.§_-6x§.graphics.moveTo(param1.position.x * this.§_-RR§,param1.position.y * this.§_-RR§);
         this.§_-6x§.graphics.lineTo((param1.position.x + this.§_-i6§ * param1.R.col1.x) * this.§_-RR§,(param1.position.y + this.§_-i6§ * param1.R.col1.y) * this.§_-RR§);
         this.§_-6x§.graphics.lineStyle(this.§_-QP§,65280,this.§_-4D§);
         this.§_-6x§.graphics.moveTo(param1.position.x * this.§_-RR§,param1.position.y * this.§_-RR§);
         this.§_-6x§.graphics.lineTo((param1.position.x + this.§_-i6§ * param1.R.col2.x) * this.§_-RR§,(param1.position.y + this.§_-i6§ * param1.R.col2.y) * this.§_-RR§);
      }
   }
}
