package §try§
{
   import §_-b4§.b2Color;
   import §_-b4§.b2internal;
   import §_-cP§.b2Transform;
   import §_-cP§.b2Vec2;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §_-1z§:uint = 1;
      
      public static var §_-Le§:uint = 2;
      
      public static var §_-Hj§:uint = 4;
      
      public static var §_-20§:uint = 8;
      
      public static var §_-wa§:uint = 16;
      
      public static var §_-qB§:uint = 32;
       
      
      private var §_-9a§:uint;
      
      b2internal var §_-iN§:Sprite;
      
      private var §_-Gf§:Number = 1.0;
      
      private var §_-14§:Number = 1.0;
      
      private var §_-gA§:Number = 1.0;
      
      private var §_-W8§:Number = 1.0;
      
      private var §_-YP§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§_-9a§ = 0;
      }
      
      public function §_-9N§(param1:uint) : void
      {
         this.§_-9a§ = param1;
      }
      
      public function §_-eC§() : uint
      {
         return this.§_-9a§;
      }
      
      public function §_-88§(param1:uint) : void
      {
         this.§_-9a§ |= param1;
      }
      
      public function §_-SK§(param1:uint) : void
      {
         this.§_-9a§ &= ~param1;
      }
      
      public function §_-vK§(param1:Sprite) : void
      {
         this.§_-iN§ = param1;
      }
      
      public function §_-UO§() : Sprite
      {
         return this.§_-iN§;
      }
      
      public function §_-Z2§(param1:Number) : void
      {
         this.§_-Gf§ = param1;
      }
      
      public function §_-Cr§() : Number
      {
         return this.§_-Gf§;
      }
      
      public function §_-aP§(param1:Number) : void
      {
         this.§_-14§ = param1;
      }
      
      public function §_-zj§() : Number
      {
         return this.§_-14§;
      }
      
      public function §_-WZ§(param1:Number) : void
      {
         this.§_-gA§ = param1;
      }
      
      public function §_-vw§() : Number
      {
         return this.§_-gA§;
      }
      
      public function §_-0-h§(param1:Number) : void
      {
         this.§_-W8§ = param1;
      }
      
      public function §_-1O§() : Number
      {
         return this.§_-W8§;
      }
      
      public function §_-WP§(param1:Number) : void
      {
         this.§_-YP§ = param1;
      }
      
      public function §_-65§() : Number
      {
         return this.§_-YP§;
      }
      
      public function §_-Ae§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§_-iN§.graphics.lineStyle(this.§_-14§,param3.color,this.§_-gA§);
         this.§_-iN§.graphics.moveTo(param1[0].x * this.§_-Gf§,param1[0].y * this.§_-Gf§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§_-iN§.graphics.lineTo(param1[_loc4_].x * this.§_-Gf§,param1[_loc4_].y * this.§_-Gf§);
            _loc4_++;
         }
         this.§_-iN§.graphics.lineTo(param1[0].x * this.§_-Gf§,param1[0].y * this.§_-Gf§);
      }
      
      public function §_-Wa§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§_-iN§.graphics.lineStyle(this.§_-14§,param3.color,this.§_-gA§);
         this.§_-iN§.graphics.moveTo(param1[0].x * this.§_-Gf§,param1[0].y * this.§_-Gf§);
         this.§_-iN§.graphics.beginFill(param3.color,this.§_-W8§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§_-iN§.graphics.lineTo(param1[_loc4_].x * this.§_-Gf§,param1[_loc4_].y * this.§_-Gf§);
            _loc4_++;
         }
         this.§_-iN§.graphics.lineTo(param1[0].x * this.§_-Gf§,param1[0].y * this.§_-Gf§);
         this.§_-iN§.graphics.endFill();
      }
      
      public function §_-jz§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§_-iN§.graphics.lineStyle(this.§_-14§,param3.color,this.§_-gA§);
         this.§_-iN§.graphics.drawCircle(param1.x * this.§_-Gf§,param1.y * this.§_-Gf§,param2 * this.§_-Gf§);
      }
      
      public function §_-Nc§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§_-iN§.graphics.lineStyle(this.§_-14§,param4.color,this.§_-gA§);
         this.§_-iN§.graphics.moveTo(0,0);
         this.§_-iN§.graphics.beginFill(param4.color,this.§_-W8§);
         this.§_-iN§.graphics.drawCircle(param1.x * this.§_-Gf§,param1.y * this.§_-Gf§,param2 * this.§_-Gf§);
         this.§_-iN§.graphics.endFill();
         this.§_-iN§.graphics.moveTo(param1.x * this.§_-Gf§,param1.y * this.§_-Gf§);
         this.§_-iN§.graphics.lineTo((param1.x + param3.x * param2) * this.§_-Gf§,(param1.y + param3.y * param2) * this.§_-Gf§);
      }
      
      public function §_-oE§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§_-iN§.graphics.lineStyle(this.§_-14§,param3.color,this.§_-gA§);
         this.§_-iN§.graphics.moveTo(param1.x * this.§_-Gf§,param1.y * this.§_-Gf§);
         this.§_-iN§.graphics.lineTo(param2.x * this.§_-Gf§,param2.y * this.§_-Gf§);
      }
      
      public function §_-Mo§(param1:b2Transform) : void
      {
         this.§_-iN§.graphics.lineStyle(this.§_-14§,16711680,this.§_-gA§);
         this.§_-iN§.graphics.moveTo(param1.position.x * this.§_-Gf§,param1.position.y * this.§_-Gf§);
         this.§_-iN§.graphics.lineTo((param1.position.x + this.§_-YP§ * param1.R.col1.x) * this.§_-Gf§,(param1.position.y + this.§_-YP§ * param1.R.col1.y) * this.§_-Gf§);
         this.§_-iN§.graphics.lineStyle(this.§_-14§,65280,this.§_-gA§);
         this.§_-iN§.graphics.moveTo(param1.position.x * this.§_-Gf§,param1.position.y * this.§_-Gf§);
         this.§_-iN§.graphics.lineTo((param1.position.x + this.§_-YP§ * param1.R.col2.x) * this.§_-Gf§,(param1.position.y + this.§_-YP§ * param1.R.col2.y) * this.§_-Gf§);
      }
   }
}
