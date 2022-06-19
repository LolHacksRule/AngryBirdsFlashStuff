package §_-00B§
{
   import §_-Jf§.b2Color;
   import §_-Jf§.b2internal;
   import §_-Vn§.b2Transform;
   import §_-Vn§.b2Vec2;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §_-R2§:uint = 1;
      
      public static var §_-CY§:uint = 2;
      
      public static var §_-WU§:uint = 4;
      
      public static var §_-Yf§:uint = 8;
      
      public static var §_-VJ§:uint = 16;
      
      public static var §_-at§:uint = 32;
       
      
      private var §_-67§:uint;
      
      b2internal var §_-IQ§:Sprite;
      
      private var §_-2C§:Number = 1.0;
      
      private var §_-ge§:Number = 1.0;
      
      private var §_-DC§:Number = 1.0;
      
      private var §true §:Number = 1.0;
      
      private var §_-ua§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§_-67§ = 0;
      }
      
      public function §_-yM§(param1:uint) : void
      {
         this.§_-67§ = param1;
      }
      
      public function §_-YH§() : uint
      {
         return this.§_-67§;
      }
      
      public function §_-8P§(param1:uint) : void
      {
         this.§_-67§ |= param1;
      }
      
      public function §_-u-§(param1:uint) : void
      {
         this.§_-67§ &= ~param1;
      }
      
      public function §_-Xj§(param1:Sprite) : void
      {
         this.§_-IQ§ = param1;
      }
      
      public function §_-od§() : Sprite
      {
         return this.§_-IQ§;
      }
      
      public function §_-Bb§(param1:Number) : void
      {
         this.§_-2C§ = param1;
      }
      
      public function §_-MA§() : Number
      {
         return this.§_-2C§;
      }
      
      public function §_-n5§(param1:Number) : void
      {
         this.§_-ge§ = param1;
      }
      
      public function §_-0-4§() : Number
      {
         return this.§_-ge§;
      }
      
      public function §_-fT§(param1:Number) : void
      {
         this.§_-DC§ = param1;
      }
      
      public function §_-h5§() : Number
      {
         return this.§_-DC§;
      }
      
      public function §_-3I§(param1:Number) : void
      {
         this.§true § = param1;
      }
      
      public function §_-Zs§() : Number
      {
         return this.§true §;
      }
      
      public function §_-Vo§(param1:Number) : void
      {
         this.§_-ua§ = param1;
      }
      
      public function §_-jj§() : Number
      {
         return this.§_-ua§;
      }
      
      public function §_-iF§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§_-IQ§.graphics.lineStyle(this.§_-ge§,param3.color,this.§_-DC§);
         this.§_-IQ§.graphics.moveTo(param1[0].x * this.§_-2C§,param1[0].y * this.§_-2C§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§_-IQ§.graphics.lineTo(param1[_loc4_].x * this.§_-2C§,param1[_loc4_].y * this.§_-2C§);
            _loc4_++;
         }
         this.§_-IQ§.graphics.lineTo(param1[0].x * this.§_-2C§,param1[0].y * this.§_-2C§);
      }
      
      public function §_-IJ§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§_-IQ§.graphics.lineStyle(this.§_-ge§,param3.color,this.§_-DC§);
         this.§_-IQ§.graphics.moveTo(param1[0].x * this.§_-2C§,param1[0].y * this.§_-2C§);
         this.§_-IQ§.graphics.beginFill(param3.color,this.§true §);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§_-IQ§.graphics.lineTo(param1[_loc4_].x * this.§_-2C§,param1[_loc4_].y * this.§_-2C§);
            _loc4_++;
         }
         this.§_-IQ§.graphics.lineTo(param1[0].x * this.§_-2C§,param1[0].y * this.§_-2C§);
         this.§_-IQ§.graphics.endFill();
      }
      
      public function §_-2z§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§_-IQ§.graphics.lineStyle(this.§_-ge§,param3.color,this.§_-DC§);
         this.§_-IQ§.graphics.drawCircle(param1.x * this.§_-2C§,param1.y * this.§_-2C§,param2 * this.§_-2C§);
      }
      
      public function §_-rG§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§_-IQ§.graphics.lineStyle(this.§_-ge§,param4.color,this.§_-DC§);
         this.§_-IQ§.graphics.moveTo(0,0);
         this.§_-IQ§.graphics.beginFill(param4.color,this.§true §);
         this.§_-IQ§.graphics.drawCircle(param1.x * this.§_-2C§,param1.y * this.§_-2C§,param2 * this.§_-2C§);
         this.§_-IQ§.graphics.endFill();
         this.§_-IQ§.graphics.moveTo(param1.x * this.§_-2C§,param1.y * this.§_-2C§);
         this.§_-IQ§.graphics.lineTo((param1.x + param3.x * param2) * this.§_-2C§,(param1.y + param3.y * param2) * this.§_-2C§);
      }
      
      public function §_-o-§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§_-IQ§.graphics.lineStyle(this.§_-ge§,param3.color,this.§_-DC§);
         this.§_-IQ§.graphics.moveTo(param1.x * this.§_-2C§,param1.y * this.§_-2C§);
         this.§_-IQ§.graphics.lineTo(param2.x * this.§_-2C§,param2.y * this.§_-2C§);
      }
      
      public function §_-00W§(param1:b2Transform) : void
      {
         this.§_-IQ§.graphics.lineStyle(this.§_-ge§,16711680,this.§_-DC§);
         this.§_-IQ§.graphics.moveTo(param1.position.x * this.§_-2C§,param1.position.y * this.§_-2C§);
         this.§_-IQ§.graphics.lineTo((param1.position.x + this.§_-ua§ * param1.R.col1.x) * this.§_-2C§,(param1.position.y + this.§_-ua§ * param1.R.col1.y) * this.§_-2C§);
         this.§_-IQ§.graphics.lineStyle(this.§_-ge§,65280,this.§_-DC§);
         this.§_-IQ§.graphics.moveTo(param1.position.x * this.§_-2C§,param1.position.y * this.§_-2C§);
         this.§_-IQ§.graphics.lineTo((param1.position.x + this.§_-ua§ * param1.R.col2.x) * this.§_-2C§,(param1.position.y + this.§_-ua§ * param1.R.col2.y) * this.§_-2C§);
      }
   }
}
