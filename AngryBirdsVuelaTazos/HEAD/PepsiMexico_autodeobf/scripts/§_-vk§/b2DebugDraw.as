package §_-vk§
{
   import §_-bA§.b2Transform;
   import §_-bA§.b2Vec2;
   import §_-rz§.b2Color;
   import §_-rz§.b2internal;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §_-y6§:uint = 1;
      
      public static var §_-b4§:uint = 2;
      
      public static var §_-Fq§:uint = 4;
      
      public static var §_-Pl§:uint = 8;
      
      public static var §_-VA§:uint = 16;
      
      public static var §_-r5§:uint = 32;
       
      
      private var §_-b§:uint;
      
      b2internal var §_-Pp§:Sprite;
      
      private var §_-iY§:Number = 1.0;
      
      private var §_-JF§:Number = 1.0;
      
      private var §_-pC§:Number = 1.0;
      
      private var §_-Y7§:Number = 1.0;
      
      private var §_-8g§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§_-b§ = 0;
      }
      
      public function §_-CJ§(param1:uint) : void
      {
         this.§_-b§ = param1;
      }
      
      public function §_-5G§() : uint
      {
         return this.§_-b§;
      }
      
      public function §_-d-§(param1:uint) : void
      {
         this.§_-b§ |= param1;
      }
      
      public function §_-Q§(param1:uint) : void
      {
         this.§_-b§ &= ~param1;
      }
      
      public function §_-vS§(param1:Sprite) : void
      {
         this.§_-Pp§ = param1;
      }
      
      public function §_-VP§() : Sprite
      {
         return this.§_-Pp§;
      }
      
      public function §_-e7§(param1:Number) : void
      {
         this.§_-iY§ = param1;
      }
      
      public function §_-kV§() : Number
      {
         return this.§_-iY§;
      }
      
      public function §_-WG§(param1:Number) : void
      {
         this.§_-JF§ = param1;
      }
      
      public function §_-3W§() : Number
      {
         return this.§_-JF§;
      }
      
      public function §_-Zt§(param1:Number) : void
      {
         this.§_-pC§ = param1;
      }
      
      public function §_-eS§() : Number
      {
         return this.§_-pC§;
      }
      
      public function §_-4U§(param1:Number) : void
      {
         this.§_-Y7§ = param1;
      }
      
      public function §_-bP§() : Number
      {
         return this.§_-Y7§;
      }
      
      public function §_-2K§(param1:Number) : void
      {
         this.§_-8g§ = param1;
      }
      
      public function §_-m3§() : Number
      {
         return this.§_-8g§;
      }
      
      public function §_-MG§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§_-Pp§.graphics.lineStyle(this.§_-JF§,param3.color,this.§_-pC§);
         this.§_-Pp§.graphics.moveTo(param1[0].x * this.§_-iY§,param1[0].y * this.§_-iY§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§_-Pp§.graphics.lineTo(param1[_loc4_].x * this.§_-iY§,param1[_loc4_].y * this.§_-iY§);
            _loc4_++;
         }
         this.§_-Pp§.graphics.lineTo(param1[0].x * this.§_-iY§,param1[0].y * this.§_-iY§);
      }
      
      public function §_-KL§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§_-Pp§.graphics.lineStyle(this.§_-JF§,param3.color,this.§_-pC§);
         this.§_-Pp§.graphics.moveTo(param1[0].x * this.§_-iY§,param1[0].y * this.§_-iY§);
         this.§_-Pp§.graphics.beginFill(param3.color,this.§_-Y7§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§_-Pp§.graphics.lineTo(param1[_loc4_].x * this.§_-iY§,param1[_loc4_].y * this.§_-iY§);
            _loc4_++;
         }
         this.§_-Pp§.graphics.lineTo(param1[0].x * this.§_-iY§,param1[0].y * this.§_-iY§);
         this.§_-Pp§.graphics.endFill();
      }
      
      public function §_-4v§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§_-Pp§.graphics.lineStyle(this.§_-JF§,param3.color,this.§_-pC§);
         this.§_-Pp§.graphics.drawCircle(param1.x * this.§_-iY§,param1.y * this.§_-iY§,param2 * this.§_-iY§);
      }
      
      public function §_-hg§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§_-Pp§.graphics.lineStyle(this.§_-JF§,param4.color,this.§_-pC§);
         this.§_-Pp§.graphics.moveTo(0,0);
         this.§_-Pp§.graphics.beginFill(param4.color,this.§_-Y7§);
         this.§_-Pp§.graphics.drawCircle(param1.x * this.§_-iY§,param1.y * this.§_-iY§,param2 * this.§_-iY§);
         this.§_-Pp§.graphics.endFill();
         this.§_-Pp§.graphics.moveTo(param1.x * this.§_-iY§,param1.y * this.§_-iY§);
         this.§_-Pp§.graphics.lineTo((param1.x + param3.x * param2) * this.§_-iY§,(param1.y + param3.y * param2) * this.§_-iY§);
      }
      
      public function §_-ek§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§_-Pp§.graphics.lineStyle(this.§_-JF§,param3.color,this.§_-pC§);
         this.§_-Pp§.graphics.moveTo(param1.x * this.§_-iY§,param1.y * this.§_-iY§);
         this.§_-Pp§.graphics.lineTo(param2.x * this.§_-iY§,param2.y * this.§_-iY§);
      }
      
      public function §_-K5§(param1:b2Transform) : void
      {
         this.§_-Pp§.graphics.lineStyle(this.§_-JF§,16711680,this.§_-pC§);
         this.§_-Pp§.graphics.moveTo(param1.position.x * this.§_-iY§,param1.position.y * this.§_-iY§);
         this.§_-Pp§.graphics.lineTo((param1.position.x + this.§_-8g§ * param1.R.col1.x) * this.§_-iY§,(param1.position.y + this.§_-8g§ * param1.R.col1.y) * this.§_-iY§);
         this.§_-Pp§.graphics.lineStyle(this.§_-JF§,65280,this.§_-pC§);
         this.§_-Pp§.graphics.moveTo(param1.position.x * this.§_-iY§,param1.position.y * this.§_-iY§);
         this.§_-Pp§.graphics.lineTo((param1.position.x + this.§_-8g§ * param1.R.col2.x) * this.§_-iY§,(param1.position.y + this.§_-8g§ * param1.R.col2.y) * this.§_-iY§);
      }
   }
}
