package §_-Iw§
{
   import §_-Ja§.b2Transform;
   import §_-Ja§.b2Vec2;
   import §_-lh§.b2Color;
   import §_-lh§.b2internal;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §_-iH§:uint = 1;
      
      public static var §_-Nl§:uint = 2;
      
      public static var §_-kR§:uint = 4;
      
      public static var §_-1d§:uint = 8;
      
      public static var §_-hl§:uint = 16;
      
      public static var §_-9q§:uint = 32;
       
      
      private var §package§:uint;
      
      b2internal var §_-C-§:Sprite;
      
      private var §_-6B§:Number = 1.0;
      
      private var §_-XP§:Number = 1.0;
      
      private var §_-LU§:Number = 1.0;
      
      private var §_-U1§:Number = 1.0;
      
      private var §_-i3§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§package§ = 0;
      }
      
      public function §_-7J§(param1:uint) : void
      {
         this.§package§ = param1;
      }
      
      public function §_-FJ§() : uint
      {
         return this.§package§;
      }
      
      public function §_-YL§(param1:uint) : void
      {
         this.§package§ |= param1;
      }
      
      public function §_-Q1§(param1:uint) : void
      {
         this.§package§ &= ~param1;
      }
      
      public function §_-Jz§(param1:Sprite) : void
      {
         this.§_-C-§ = param1;
      }
      
      public function § var§() : Sprite
      {
         return this.§_-C-§;
      }
      
      public function §_-o7§(param1:Number) : void
      {
         this.§_-6B§ = param1;
      }
      
      public function §_-Kl§() : Number
      {
         return this.§_-6B§;
      }
      
      public function §_-4t§(param1:Number) : void
      {
         this.§_-XP§ = param1;
      }
      
      public function §_-Tw§() : Number
      {
         return this.§_-XP§;
      }
      
      public function §_-BE§(param1:Number) : void
      {
         this.§_-LU§ = param1;
      }
      
      public function §_-t2§() : Number
      {
         return this.§_-LU§;
      }
      
      public function §_-HD§(param1:Number) : void
      {
         this.§_-U1§ = param1;
      }
      
      public function §_-c6§() : Number
      {
         return this.§_-U1§;
      }
      
      public function §_-WG§(param1:Number) : void
      {
         this.§_-i3§ = param1;
      }
      
      public function §_-oU§() : Number
      {
         return this.§_-i3§;
      }
      
      public function §_-Ti§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§_-C-§.graphics.lineStyle(this.§_-XP§,param3.color,this.§_-LU§);
         this.§_-C-§.graphics.moveTo(param1[0].x * this.§_-6B§,param1[0].y * this.§_-6B§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§_-C-§.graphics.lineTo(param1[_loc4_].x * this.§_-6B§,param1[_loc4_].y * this.§_-6B§);
            _loc4_++;
         }
         this.§_-C-§.graphics.lineTo(param1[0].x * this.§_-6B§,param1[0].y * this.§_-6B§);
      }
      
      public function §_-eB§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§_-C-§.graphics.lineStyle(this.§_-XP§,param3.color,this.§_-LU§);
         this.§_-C-§.graphics.moveTo(param1[0].x * this.§_-6B§,param1[0].y * this.§_-6B§);
         this.§_-C-§.graphics.beginFill(param3.color,this.§_-U1§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§_-C-§.graphics.lineTo(param1[_loc4_].x * this.§_-6B§,param1[_loc4_].y * this.§_-6B§);
            _loc4_++;
         }
         this.§_-C-§.graphics.lineTo(param1[0].x * this.§_-6B§,param1[0].y * this.§_-6B§);
         this.§_-C-§.graphics.endFill();
      }
      
      public function §_-Ll§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§_-C-§.graphics.lineStyle(this.§_-XP§,param3.color,this.§_-LU§);
         this.§_-C-§.graphics.drawCircle(param1.x * this.§_-6B§,param1.y * this.§_-6B§,param2 * this.§_-6B§);
      }
      
      public function §_-fn§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§_-C-§.graphics.lineStyle(this.§_-XP§,param4.color,this.§_-LU§);
         this.§_-C-§.graphics.moveTo(0,0);
         this.§_-C-§.graphics.beginFill(param4.color,this.§_-U1§);
         this.§_-C-§.graphics.drawCircle(param1.x * this.§_-6B§,param1.y * this.§_-6B§,param2 * this.§_-6B§);
         this.§_-C-§.graphics.endFill();
         this.§_-C-§.graphics.moveTo(param1.x * this.§_-6B§,param1.y * this.§_-6B§);
         this.§_-C-§.graphics.lineTo((param1.x + param3.x * param2) * this.§_-6B§,(param1.y + param3.y * param2) * this.§_-6B§);
      }
      
      public function §_-xF§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§_-C-§.graphics.lineStyle(this.§_-XP§,param3.color,this.§_-LU§);
         this.§_-C-§.graphics.moveTo(param1.x * this.§_-6B§,param1.y * this.§_-6B§);
         this.§_-C-§.graphics.lineTo(param2.x * this.§_-6B§,param2.y * this.§_-6B§);
      }
      
      public function §_-tl§(param1:b2Transform) : void
      {
         this.§_-C-§.graphics.lineStyle(this.§_-XP§,16711680,this.§_-LU§);
         this.§_-C-§.graphics.moveTo(param1.position.x * this.§_-6B§,param1.position.y * this.§_-6B§);
         this.§_-C-§.graphics.lineTo((param1.position.x + this.§_-i3§ * param1.R.col1.x) * this.§_-6B§,(param1.position.y + this.§_-i3§ * param1.R.col1.y) * this.§_-6B§);
         this.§_-C-§.graphics.lineStyle(this.§_-XP§,65280,this.§_-LU§);
         this.§_-C-§.graphics.moveTo(param1.position.x * this.§_-6B§,param1.position.y * this.§_-6B§);
         this.§_-C-§.graphics.lineTo((param1.position.x + this.§_-i3§ * param1.R.col2.x) * this.§_-6B§,(param1.position.y + this.§_-i3§ * param1.R.col2.y) * this.§_-6B§);
      }
   }
}
