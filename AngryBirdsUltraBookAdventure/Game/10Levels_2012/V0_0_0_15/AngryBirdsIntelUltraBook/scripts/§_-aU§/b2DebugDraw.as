package §_-aU§
{
   import §_-5§.b2Color;
   import §_-5§.b2internal;
   import §_-Yp§.b2Transform;
   import §_-Yp§.b2Vec2;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §_-vn§:uint = 1;
      
      public static var §_-x1§:uint = 2;
      
      public static var §_-Wa§:uint = 4;
      
      public static var §_-0E1§:uint = 8;
      
      public static var §_-d6§:uint = 16;
      
      public static var §_-Mo§:uint = 32;
       
      
      private var §_-ZH§:uint;
      
      b2internal var §_-f9§:Sprite;
      
      private var §_-qm§:Number = 1.0;
      
      private var §_-KQ§:Number = 1.0;
      
      private var §_-iu§:Number = 1.0;
      
      private var §_-mF§:Number = 1.0;
      
      private var §_-XS§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§_-ZH§ = 0;
      }
      
      public function §_-Tm§(param1:uint) : void
      {
         this.§_-ZH§ = param1;
      }
      
      public function §_-0p§() : uint
      {
         return this.§_-ZH§;
      }
      
      public function §_-0Bo§(param1:uint) : void
      {
         this.§_-ZH§ |= param1;
      }
      
      public function §_-zB§(param1:uint) : void
      {
         this.§_-ZH§ &= ~param1;
      }
      
      public function §_-G4§(param1:Sprite) : void
      {
         this.§_-f9§ = param1;
      }
      
      public function §_-IQ§() : Sprite
      {
         return this.§_-f9§;
      }
      
      public function §_-mQ§(param1:Number) : void
      {
         this.§_-qm§ = param1;
      }
      
      public function §_-Bo§() : Number
      {
         return this.§_-qm§;
      }
      
      public function §_-02O§(param1:Number) : void
      {
         this.§_-KQ§ = param1;
      }
      
      public function §_-04B§() : Number
      {
         return this.§_-KQ§;
      }
      
      public function §_-u1§(param1:Number) : void
      {
         this.§_-iu§ = param1;
      }
      
      public function §_-ZU§() : Number
      {
         return this.§_-iu§;
      }
      
      public function §_-rX§(param1:Number) : void
      {
         this.§_-mF§ = param1;
      }
      
      public function §_-NA§() : Number
      {
         return this.§_-mF§;
      }
      
      public function §_-tj§(param1:Number) : void
      {
         this.§_-XS§ = param1;
      }
      
      public function §_-04y§() : Number
      {
         return this.§_-XS§;
      }
      
      public function §default§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§_-f9§.graphics.lineStyle(this.§_-KQ§,param3.color,this.§_-iu§);
         this.§_-f9§.graphics.moveTo(param1[0].x * this.§_-qm§,param1[0].y * this.§_-qm§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§_-f9§.graphics.lineTo(param1[_loc4_].x * this.§_-qm§,param1[_loc4_].y * this.§_-qm§);
            _loc4_++;
         }
         this.§_-f9§.graphics.lineTo(param1[0].x * this.§_-qm§,param1[0].y * this.§_-qm§);
      }
      
      public function §_-Oc§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§_-f9§.graphics.lineStyle(this.§_-KQ§,param3.color,this.§_-iu§);
         this.§_-f9§.graphics.moveTo(param1[0].x * this.§_-qm§,param1[0].y * this.§_-qm§);
         this.§_-f9§.graphics.beginFill(param3.color,this.§_-mF§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§_-f9§.graphics.lineTo(param1[_loc4_].x * this.§_-qm§,param1[_loc4_].y * this.§_-qm§);
            _loc4_++;
         }
         this.§_-f9§.graphics.lineTo(param1[0].x * this.§_-qm§,param1[0].y * this.§_-qm§);
         this.§_-f9§.graphics.endFill();
      }
      
      public function §_-iK§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§_-f9§.graphics.lineStyle(this.§_-KQ§,param3.color,this.§_-iu§);
         this.§_-f9§.graphics.drawCircle(param1.x * this.§_-qm§,param1.y * this.§_-qm§,param2 * this.§_-qm§);
      }
      
      public function §_-7J§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§_-f9§.graphics.lineStyle(this.§_-KQ§,param4.color,this.§_-iu§);
         this.§_-f9§.graphics.moveTo(0,0);
         this.§_-f9§.graphics.beginFill(param4.color,this.§_-mF§);
         this.§_-f9§.graphics.drawCircle(param1.x * this.§_-qm§,param1.y * this.§_-qm§,param2 * this.§_-qm§);
         this.§_-f9§.graphics.endFill();
         this.§_-f9§.graphics.moveTo(param1.x * this.§_-qm§,param1.y * this.§_-qm§);
         this.§_-f9§.graphics.lineTo((param1.x + param3.x * param2) * this.§_-qm§,(param1.y + param3.y * param2) * this.§_-qm§);
      }
      
      public function §_-T4§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§_-f9§.graphics.lineStyle(this.§_-KQ§,param3.color,this.§_-iu§);
         this.§_-f9§.graphics.moveTo(param1.x * this.§_-qm§,param1.y * this.§_-qm§);
         this.§_-f9§.graphics.lineTo(param2.x * this.§_-qm§,param2.y * this.§_-qm§);
      }
      
      public function §_-As§(param1:b2Transform) : void
      {
         this.§_-f9§.graphics.lineStyle(this.§_-KQ§,16711680,this.§_-iu§);
         this.§_-f9§.graphics.moveTo(param1.position.x * this.§_-qm§,param1.position.y * this.§_-qm§);
         this.§_-f9§.graphics.lineTo((param1.position.x + this.§_-XS§ * param1.R.col1.x) * this.§_-qm§,(param1.position.y + this.§_-XS§ * param1.R.col1.y) * this.§_-qm§);
         this.§_-f9§.graphics.lineStyle(this.§_-KQ§,65280,this.§_-iu§);
         this.§_-f9§.graphics.moveTo(param1.position.x * this.§_-qm§,param1.position.y * this.§_-qm§);
         this.§_-f9§.graphics.lineTo((param1.position.x + this.§_-XS§ * param1.R.col2.x) * this.§_-qm§,(param1.position.y + this.§_-XS§ * param1.R.col2.y) * this.§_-qm§);
      }
   }
}
