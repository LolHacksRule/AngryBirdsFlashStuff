package §_-rg§
{
   import §_-Zl§.b2Transform;
   import §_-Zl§.b2Vec2;
   import §_-uS§.b2Color;
   import §_-uS§.b2internal;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §_-Hv§:uint = 1;
      
      public static var §_-sQ§:uint = 2;
      
      public static var §_-Xd§:uint = 4;
      
      public static var §_-qo§:uint = 8;
      
      public static var §_-an§:uint = 16;
      
      public static var §_-sf§:uint = 32;
       
      
      private var §_-oB§:uint;
      
      b2internal var §_-Oc§:Sprite;
      
      private var §_-ay§:Number = 1.0;
      
      private var §_-xF§:Number = 1.0;
      
      private var §_-mH§:Number = 1.0;
      
      private var §_-Jh§:Number = 1.0;
      
      private var §_-QE§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§_-oB§ = 0;
      }
      
      public function §_-c9§(param1:uint) : void
      {
         this.§_-oB§ = param1;
      }
      
      public function §_-VK§() : uint
      {
         return this.§_-oB§;
      }
      
      public function §_-Nn§(param1:uint) : void
      {
         this.§_-oB§ |= param1;
      }
      
      public function §_-ta§(param1:uint) : void
      {
         this.§_-oB§ &= ~param1;
      }
      
      public function §_-8B§(param1:Sprite) : void
      {
         this.§_-Oc§ = param1;
      }
      
      public function §_-VU§() : Sprite
      {
         return this.§_-Oc§;
      }
      
      public function §_-bp§(param1:Number) : void
      {
         this.§_-ay§ = param1;
      }
      
      public function §_-Ld§() : Number
      {
         return this.§_-ay§;
      }
      
      public function §_-7p§(param1:Number) : void
      {
         this.§_-xF§ = param1;
      }
      
      public function §_-dB§() : Number
      {
         return this.§_-xF§;
      }
      
      public function §_-gM§(param1:Number) : void
      {
         this.§_-mH§ = param1;
      }
      
      public function §_-CC§() : Number
      {
         return this.§_-mH§;
      }
      
      public function §_-3G§(param1:Number) : void
      {
         this.§_-Jh§ = param1;
      }
      
      public function §_-QF§() : Number
      {
         return this.§_-Jh§;
      }
      
      public function §_-g3§(param1:Number) : void
      {
         this.§_-QE§ = param1;
      }
      
      public function §_-EV§() : Number
      {
         return this.§_-QE§;
      }
      
      public function §_-tn§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§_-Oc§.graphics.lineStyle(this.§_-xF§,param3.color,this.§_-mH§);
         this.§_-Oc§.graphics.moveTo(param1[0].x * this.§_-ay§,param1[0].y * this.§_-ay§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§_-Oc§.graphics.lineTo(param1[_loc4_].x * this.§_-ay§,param1[_loc4_].y * this.§_-ay§);
            _loc4_++;
         }
         this.§_-Oc§.graphics.lineTo(param1[0].x * this.§_-ay§,param1[0].y * this.§_-ay§);
      }
      
      public function §_-rN§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§_-Oc§.graphics.lineStyle(this.§_-xF§,param3.color,this.§_-mH§);
         this.§_-Oc§.graphics.moveTo(param1[0].x * this.§_-ay§,param1[0].y * this.§_-ay§);
         this.§_-Oc§.graphics.beginFill(param3.color,this.§_-Jh§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§_-Oc§.graphics.lineTo(param1[_loc4_].x * this.§_-ay§,param1[_loc4_].y * this.§_-ay§);
            _loc4_++;
         }
         this.§_-Oc§.graphics.lineTo(param1[0].x * this.§_-ay§,param1[0].y * this.§_-ay§);
         this.§_-Oc§.graphics.endFill();
      }
      
      public function §_-qi§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§_-Oc§.graphics.lineStyle(this.§_-xF§,param3.color,this.§_-mH§);
         this.§_-Oc§.graphics.drawCircle(param1.x * this.§_-ay§,param1.y * this.§_-ay§,param2 * this.§_-ay§);
      }
      
      public function §_-WG§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§_-Oc§.graphics.lineStyle(this.§_-xF§,param4.color,this.§_-mH§);
         this.§_-Oc§.graphics.moveTo(0,0);
         this.§_-Oc§.graphics.beginFill(param4.color,this.§_-Jh§);
         this.§_-Oc§.graphics.drawCircle(param1.x * this.§_-ay§,param1.y * this.§_-ay§,param2 * this.§_-ay§);
         this.§_-Oc§.graphics.endFill();
         this.§_-Oc§.graphics.moveTo(param1.x * this.§_-ay§,param1.y * this.§_-ay§);
         this.§_-Oc§.graphics.lineTo((param1.x + param3.x * param2) * this.§_-ay§,(param1.y + param3.y * param2) * this.§_-ay§);
      }
      
      public function §_-sK§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§_-Oc§.graphics.lineStyle(this.§_-xF§,param3.color,this.§_-mH§);
         this.§_-Oc§.graphics.moveTo(param1.x * this.§_-ay§,param1.y * this.§_-ay§);
         this.§_-Oc§.graphics.lineTo(param2.x * this.§_-ay§,param2.y * this.§_-ay§);
      }
      
      public function §_-9k§(param1:b2Transform) : void
      {
         this.§_-Oc§.graphics.lineStyle(this.§_-xF§,16711680,this.§_-mH§);
         this.§_-Oc§.graphics.moveTo(param1.position.x * this.§_-ay§,param1.position.y * this.§_-ay§);
         this.§_-Oc§.graphics.lineTo((param1.position.x + this.§_-QE§ * param1.R.col1.x) * this.§_-ay§,(param1.position.y + this.§_-QE§ * param1.R.col1.y) * this.§_-ay§);
         this.§_-Oc§.graphics.lineStyle(this.§_-xF§,65280,this.§_-mH§);
         this.§_-Oc§.graphics.moveTo(param1.position.x * this.§_-ay§,param1.position.y * this.§_-ay§);
         this.§_-Oc§.graphics.lineTo((param1.position.x + this.§_-QE§ * param1.R.col2.x) * this.§_-ay§,(param1.position.y + this.§_-QE§ * param1.R.col2.y) * this.§_-ay§);
      }
   }
}
