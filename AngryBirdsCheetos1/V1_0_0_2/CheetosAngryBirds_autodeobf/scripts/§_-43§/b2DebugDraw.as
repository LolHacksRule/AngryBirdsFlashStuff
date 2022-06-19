package §_-43§
{
   import §_-F2§.b2Transform;
   import §_-F2§.b2Vec2;
   import §_-d6§.b2Color;
   import §_-d6§.b2internal;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §_-in§:uint = 1;
      
      public static var §_-Uq§:uint = 2;
      
      public static var §_-1N§:uint = 4;
      
      public static var §_-br§:uint = 8;
      
      public static var §_-Eo§:uint = 16;
      
      public static var §_-yB§:uint = 32;
       
      
      private var §_-iN§:uint;
      
      b2internal var §_-OL§:Sprite;
      
      private var §_-IS§:Number = 1.0;
      
      private var §_-UB§:Number = 1.0;
      
      private var §_-vF§:Number = 1.0;
      
      private var §_-zE§:Number = 1.0;
      
      private var §_-UE§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§_-iN§ = 0;
      }
      
      public function §_-vf§(param1:uint) : void
      {
         this.§_-iN§ = param1;
      }
      
      public function §_-kv§() : uint
      {
         return this.§_-iN§;
      }
      
      public function §_-FQ§(param1:uint) : void
      {
         this.§_-iN§ |= param1;
      }
      
      public function §_-i-§(param1:uint) : void
      {
         this.§_-iN§ &= ~param1;
      }
      
      public function §_-gU§(param1:Sprite) : void
      {
         this.§_-OL§ = param1;
      }
      
      public function §_-pa§() : Sprite
      {
         return this.§_-OL§;
      }
      
      public function §_-B8§(param1:Number) : void
      {
         this.§_-IS§ = param1;
      }
      
      public function §_-z-§() : Number
      {
         return this.§_-IS§;
      }
      
      public function §_-hx§(param1:Number) : void
      {
         this.§_-UB§ = param1;
      }
      
      public function §_-mJ§() : Number
      {
         return this.§_-UB§;
      }
      
      public function §_-pz§(param1:Number) : void
      {
         this.§_-vF§ = param1;
      }
      
      public function §_-YQ§() : Number
      {
         return this.§_-vF§;
      }
      
      public function §_-3c§(param1:Number) : void
      {
         this.§_-zE§ = param1;
      }
      
      public function §_-oP§() : Number
      {
         return this.§_-zE§;
      }
      
      public function §_-3S§(param1:Number) : void
      {
         this.§_-UE§ = param1;
      }
      
      public function §_-h3§() : Number
      {
         return this.§_-UE§;
      }
      
      public function §_-yz§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§_-OL§.graphics.lineStyle(this.§_-UB§,param3.color,this.§_-vF§);
         this.§_-OL§.graphics.moveTo(param1[0].x * this.§_-IS§,param1[0].y * this.§_-IS§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§_-OL§.graphics.lineTo(param1[_loc4_].x * this.§_-IS§,param1[_loc4_].y * this.§_-IS§);
            _loc4_++;
         }
         this.§_-OL§.graphics.lineTo(param1[0].x * this.§_-IS§,param1[0].y * this.§_-IS§);
      }
      
      public function §_-cB§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§_-OL§.graphics.lineStyle(this.§_-UB§,param3.color,this.§_-vF§);
         this.§_-OL§.graphics.moveTo(param1[0].x * this.§_-IS§,param1[0].y * this.§_-IS§);
         this.§_-OL§.graphics.beginFill(param3.color,this.§_-zE§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§_-OL§.graphics.lineTo(param1[_loc4_].x * this.§_-IS§,param1[_loc4_].y * this.§_-IS§);
            _loc4_++;
         }
         this.§_-OL§.graphics.lineTo(param1[0].x * this.§_-IS§,param1[0].y * this.§_-IS§);
         this.§_-OL§.graphics.endFill();
      }
      
      public function §_-t7§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§_-OL§.graphics.lineStyle(this.§_-UB§,param3.color,this.§_-vF§);
         this.§_-OL§.graphics.drawCircle(param1.x * this.§_-IS§,param1.y * this.§_-IS§,param2 * this.§_-IS§);
      }
      
      public function §_-b8§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§_-OL§.graphics.lineStyle(this.§_-UB§,param4.color,this.§_-vF§);
         this.§_-OL§.graphics.moveTo(0,0);
         this.§_-OL§.graphics.beginFill(param4.color,this.§_-zE§);
         this.§_-OL§.graphics.drawCircle(param1.x * this.§_-IS§,param1.y * this.§_-IS§,param2 * this.§_-IS§);
         this.§_-OL§.graphics.endFill();
         this.§_-OL§.graphics.moveTo(param1.x * this.§_-IS§,param1.y * this.§_-IS§);
         this.§_-OL§.graphics.lineTo((param1.x + param3.x * param2) * this.§_-IS§,(param1.y + param3.y * param2) * this.§_-IS§);
      }
      
      public function §_-IQ§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§_-OL§.graphics.lineStyle(this.§_-UB§,param3.color,this.§_-vF§);
         this.§_-OL§.graphics.moveTo(param1.x * this.§_-IS§,param1.y * this.§_-IS§);
         this.§_-OL§.graphics.lineTo(param2.x * this.§_-IS§,param2.y * this.§_-IS§);
      }
      
      public function §_-Im§(param1:b2Transform) : void
      {
         this.§_-OL§.graphics.lineStyle(this.§_-UB§,16711680,this.§_-vF§);
         this.§_-OL§.graphics.moveTo(param1.position.x * this.§_-IS§,param1.position.y * this.§_-IS§);
         this.§_-OL§.graphics.lineTo((param1.position.x + this.§_-UE§ * param1.R.col1.x) * this.§_-IS§,(param1.position.y + this.§_-UE§ * param1.R.col1.y) * this.§_-IS§);
         this.§_-OL§.graphics.lineStyle(this.§_-UB§,65280,this.§_-vF§);
         this.§_-OL§.graphics.moveTo(param1.position.x * this.§_-IS§,param1.position.y * this.§_-IS§);
         this.§_-OL§.graphics.lineTo((param1.position.x + this.§_-UE§ * param1.R.col2.x) * this.§_-IS§,(param1.position.y + this.§_-UE§ * param1.R.col2.y) * this.§_-IS§);
      }
   }
}
