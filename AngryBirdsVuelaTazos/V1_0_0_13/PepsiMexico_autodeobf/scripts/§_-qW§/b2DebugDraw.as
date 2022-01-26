package §_-qW§
{
   import §_-SM§.b2Color;
   import §_-SM§.b2internal;
   import flash.display.Sprite;
   import §var§.b2Transform;
   import §var§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §_-fw§:uint = 1;
      
      public static var §_-6H§:uint = 2;
      
      public static var §_-IO§:uint = 4;
      
      public static var §_-Wv§:uint = 8;
      
      public static var §_-Lf§:uint = 16;
      
      public static var §_-rR§:uint = 32;
       
      
      private var §_-vl§:uint;
      
      b2internal var §_-e9§:Sprite;
      
      private var §_-VR§:Number = 1.0;
      
      private var §_-yz§:Number = 1.0;
      
      private var §_-QT§:Number = 1.0;
      
      private var §_-qg§:Number = 1.0;
      
      private var §_-y0§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§_-vl§ = 0;
      }
      
      public function §_-PE§(param1:uint) : void
      {
         this.§_-vl§ = param1;
      }
      
      public function §_-I5§() : uint
      {
         return this.§_-vl§;
      }
      
      public function §_-GX§(param1:uint) : void
      {
         this.§_-vl§ |= param1;
      }
      
      public function §_-tl§(param1:uint) : void
      {
         this.§_-vl§ &= ~param1;
      }
      
      public function §_-7j§(param1:Sprite) : void
      {
         this.§_-e9§ = param1;
      }
      
      public function §_-C4§() : Sprite
      {
         return this.§_-e9§;
      }
      
      public function §_-jV§(param1:Number) : void
      {
         this.§_-VR§ = param1;
      }
      
      public function §_-gr§() : Number
      {
         return this.§_-VR§;
      }
      
      public function §_-im§(param1:Number) : void
      {
         this.§_-yz§ = param1;
      }
      
      public function §_-rn§() : Number
      {
         return this.§_-yz§;
      }
      
      public function §_-tu§(param1:Number) : void
      {
         this.§_-QT§ = param1;
      }
      
      public function §_-d5§() : Number
      {
         return this.§_-QT§;
      }
      
      public function §_-M5§(param1:Number) : void
      {
         this.§_-qg§ = param1;
      }
      
      public function §_-B3§() : Number
      {
         return this.§_-qg§;
      }
      
      public function §_-Z5§(param1:Number) : void
      {
         this.§_-y0§ = param1;
      }
      
      public function §_-my§() : Number
      {
         return this.§_-y0§;
      }
      
      public function §_-eX§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§_-e9§.graphics.lineStyle(this.§_-yz§,param3.color,this.§_-QT§);
         this.§_-e9§.graphics.moveTo(param1[0].x * this.§_-VR§,param1[0].y * this.§_-VR§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§_-e9§.graphics.lineTo(param1[_loc4_].x * this.§_-VR§,param1[_loc4_].y * this.§_-VR§);
            _loc4_++;
         }
         this.§_-e9§.graphics.lineTo(param1[0].x * this.§_-VR§,param1[0].y * this.§_-VR§);
      }
      
      public function §_-8n§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§_-e9§.graphics.lineStyle(this.§_-yz§,param3.color,this.§_-QT§);
         this.§_-e9§.graphics.moveTo(param1[0].x * this.§_-VR§,param1[0].y * this.§_-VR§);
         this.§_-e9§.graphics.beginFill(param3.color,this.§_-qg§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§_-e9§.graphics.lineTo(param1[_loc4_].x * this.§_-VR§,param1[_loc4_].y * this.§_-VR§);
            _loc4_++;
         }
         this.§_-e9§.graphics.lineTo(param1[0].x * this.§_-VR§,param1[0].y * this.§_-VR§);
         this.§_-e9§.graphics.endFill();
      }
      
      public function §_-f0§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§_-e9§.graphics.lineStyle(this.§_-yz§,param3.color,this.§_-QT§);
         this.§_-e9§.graphics.drawCircle(param1.x * this.§_-VR§,param1.y * this.§_-VR§,param2 * this.§_-VR§);
      }
      
      public function §_-3Y§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§_-e9§.graphics.lineStyle(this.§_-yz§,param4.color,this.§_-QT§);
         this.§_-e9§.graphics.moveTo(0,0);
         this.§_-e9§.graphics.beginFill(param4.color,this.§_-qg§);
         this.§_-e9§.graphics.drawCircle(param1.x * this.§_-VR§,param1.y * this.§_-VR§,param2 * this.§_-VR§);
         this.§_-e9§.graphics.endFill();
         this.§_-e9§.graphics.moveTo(param1.x * this.§_-VR§,param1.y * this.§_-VR§);
         this.§_-e9§.graphics.lineTo((param1.x + param3.x * param2) * this.§_-VR§,(param1.y + param3.y * param2) * this.§_-VR§);
      }
      
      public function §_-z1§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§_-e9§.graphics.lineStyle(this.§_-yz§,param3.color,this.§_-QT§);
         this.§_-e9§.graphics.moveTo(param1.x * this.§_-VR§,param1.y * this.§_-VR§);
         this.§_-e9§.graphics.lineTo(param2.x * this.§_-VR§,param2.y * this.§_-VR§);
      }
      
      public function §_-WA§(param1:b2Transform) : void
      {
         this.§_-e9§.graphics.lineStyle(this.§_-yz§,16711680,this.§_-QT§);
         this.§_-e9§.graphics.moveTo(param1.position.x * this.§_-VR§,param1.position.y * this.§_-VR§);
         this.§_-e9§.graphics.lineTo((param1.position.x + this.§_-y0§ * param1.R.col1.x) * this.§_-VR§,(param1.position.y + this.§_-y0§ * param1.R.col1.y) * this.§_-VR§);
         this.§_-e9§.graphics.lineStyle(this.§_-yz§,65280,this.§_-QT§);
         this.§_-e9§.graphics.moveTo(param1.position.x * this.§_-VR§,param1.position.y * this.§_-VR§);
         this.§_-e9§.graphics.lineTo((param1.position.x + this.§_-y0§ * param1.R.col2.x) * this.§_-VR§,(param1.position.y + this.§_-y0§ * param1.R.col2.y) * this.§_-VR§);
      }
   }
}
