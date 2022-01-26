package §_-EH§
{
   import §_-9z§.b2Transform;
   import §_-9z§.b2Vec2;
   import §_-sU§.b2Color;
   import §_-sU§.b2internal;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §_-fq§:uint = 1;
      
      public static var §in§:uint = 2;
      
      public static var §_-Pu§:uint = 4;
      
      public static var §_-D§:uint = 8;
      
      public static var §_-as§:uint = 16;
      
      public static var §_-F6§:uint = 32;
       
      
      private var §_-LY§:uint;
      
      b2internal var §_-uR§:Sprite;
      
      private var §_-Td§:Number = 1.0;
      
      private var §_-Lu§:Number = 1.0;
      
      private var §_-V7§:Number = 1.0;
      
      private var §_-d6§:Number = 1.0;
      
      private var §_-my§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§_-LY§ = 0;
      }
      
      public function §_-fd§(param1:uint) : void
      {
         this.§_-LY§ = param1;
      }
      
      public function §_-Ne§() : uint
      {
         return this.§_-LY§;
      }
      
      public function §_-10§(param1:uint) : void
      {
         this.§_-LY§ |= param1;
      }
      
      public function §_-l0§(param1:uint) : void
      {
         this.§_-LY§ &= ~param1;
      }
      
      public function §_-i5§(param1:Sprite) : void
      {
         this.§_-uR§ = param1;
      }
      
      public function §_-r9§() : Sprite
      {
         return this.§_-uR§;
      }
      
      public function §_-dF§(param1:Number) : void
      {
         this.§_-Td§ = param1;
      }
      
      public function §_-Ex§() : Number
      {
         return this.§_-Td§;
      }
      
      public function §_-QF§(param1:Number) : void
      {
         this.§_-Lu§ = param1;
      }
      
      public function §_-ph§() : Number
      {
         return this.§_-Lu§;
      }
      
      public function §_-Vp§(param1:Number) : void
      {
         this.§_-V7§ = param1;
      }
      
      public function §_-bG§() : Number
      {
         return this.§_-V7§;
      }
      
      public function §_-l7§(param1:Number) : void
      {
         this.§_-d6§ = param1;
      }
      
      public function §_-A4§() : Number
      {
         return this.§_-d6§;
      }
      
      public function §_-DT§(param1:Number) : void
      {
         this.§_-my§ = param1;
      }
      
      public function §_-Ls§() : Number
      {
         return this.§_-my§;
      }
      
      public function §_-1z§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§_-uR§.graphics.lineStyle(this.§_-Lu§,param3.color,this.§_-V7§);
         this.§_-uR§.graphics.moveTo(param1[0].x * this.§_-Td§,param1[0].y * this.§_-Td§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§_-uR§.graphics.lineTo(param1[_loc4_].x * this.§_-Td§,param1[_loc4_].y * this.§_-Td§);
            _loc4_++;
         }
         this.§_-uR§.graphics.lineTo(param1[0].x * this.§_-Td§,param1[0].y * this.§_-Td§);
      }
      
      public function §_-or§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§_-uR§.graphics.lineStyle(this.§_-Lu§,param3.color,this.§_-V7§);
         this.§_-uR§.graphics.moveTo(param1[0].x * this.§_-Td§,param1[0].y * this.§_-Td§);
         this.§_-uR§.graphics.beginFill(param3.color,this.§_-d6§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§_-uR§.graphics.lineTo(param1[_loc4_].x * this.§_-Td§,param1[_loc4_].y * this.§_-Td§);
            _loc4_++;
         }
         this.§_-uR§.graphics.lineTo(param1[0].x * this.§_-Td§,param1[0].y * this.§_-Td§);
         this.§_-uR§.graphics.endFill();
      }
      
      public function §_-a1§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§_-uR§.graphics.lineStyle(this.§_-Lu§,param3.color,this.§_-V7§);
         this.§_-uR§.graphics.drawCircle(param1.x * this.§_-Td§,param1.y * this.§_-Td§,param2 * this.§_-Td§);
      }
      
      public function §_-Qs§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§_-uR§.graphics.lineStyle(this.§_-Lu§,param4.color,this.§_-V7§);
         this.§_-uR§.graphics.moveTo(0,0);
         this.§_-uR§.graphics.beginFill(param4.color,this.§_-d6§);
         this.§_-uR§.graphics.drawCircle(param1.x * this.§_-Td§,param1.y * this.§_-Td§,param2 * this.§_-Td§);
         this.§_-uR§.graphics.endFill();
         this.§_-uR§.graphics.moveTo(param1.x * this.§_-Td§,param1.y * this.§_-Td§);
         this.§_-uR§.graphics.lineTo((param1.x + param3.x * param2) * this.§_-Td§,(param1.y + param3.y * param2) * this.§_-Td§);
      }
      
      public function §_-mo§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§_-uR§.graphics.lineStyle(this.§_-Lu§,param3.color,this.§_-V7§);
         this.§_-uR§.graphics.moveTo(param1.x * this.§_-Td§,param1.y * this.§_-Td§);
         this.§_-uR§.graphics.lineTo(param2.x * this.§_-Td§,param2.y * this.§_-Td§);
      }
      
      public function §_-go§(param1:b2Transform) : void
      {
         this.§_-uR§.graphics.lineStyle(this.§_-Lu§,16711680,this.§_-V7§);
         this.§_-uR§.graphics.moveTo(param1.position.x * this.§_-Td§,param1.position.y * this.§_-Td§);
         this.§_-uR§.graphics.lineTo((param1.position.x + this.§_-my§ * param1.R.col1.x) * this.§_-Td§,(param1.position.y + this.§_-my§ * param1.R.col1.y) * this.§_-Td§);
         this.§_-uR§.graphics.lineStyle(this.§_-Lu§,65280,this.§_-V7§);
         this.§_-uR§.graphics.moveTo(param1.position.x * this.§_-Td§,param1.position.y * this.§_-Td§);
         this.§_-uR§.graphics.lineTo((param1.position.x + this.§_-my§ * param1.R.col2.x) * this.§_-Td§,(param1.position.y + this.§_-my§ * param1.R.col2.y) * this.§_-Td§);
      }
   }
}
