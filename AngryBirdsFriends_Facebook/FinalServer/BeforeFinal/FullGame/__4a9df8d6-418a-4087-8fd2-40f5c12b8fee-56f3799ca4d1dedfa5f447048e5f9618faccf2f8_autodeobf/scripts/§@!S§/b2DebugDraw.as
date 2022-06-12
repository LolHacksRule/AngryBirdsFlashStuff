package §@!S§
{
   import §?!C§.b2Transform;
   import §?!C§.b2Vec2;
   import §?N§.b2Color;
   import §?N§.b2internal;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §!$&§:uint = 1;
      
      public static var §9#l§:uint = 2;
      
      public static var §@E§:uint = 4;
      
      public static var §0#O§:uint = 8;
      
      public static var §,!s§:uint = 16;
      
      public static var §2!v§:uint = 32;
       
      
      private var §?#u§:uint;
      
      b2internal var §9!@§:Sprite;
      
      private var §%"V§:Number = 1.0;
      
      private var §="w§:Number = 1.0;
      
      private var §>"m§:Number = 1.0;
      
      private var §]#e§:Number = 1.0;
      
      private var §``§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§?#u§ = 0;
      }
      
      public function §<"D§(param1:uint) : void
      {
         this.§?#u§ = param1;
      }
      
      public function §!!!§() : uint
      {
         return this.§?#u§;
      }
      
      public function §&"C§(param1:uint) : void
      {
         this.§?#u§ |= param1;
      }
      
      public function §=z§(param1:uint) : void
      {
         this.§?#u§ &= ~param1;
      }
      
      public function §'J§(param1:Sprite) : void
      {
         this.§9!@§ = param1;
      }
      
      public function §<N§() : Sprite
      {
         return this.§9!@§;
      }
      
      public function §+C§(param1:Number) : void
      {
         this.§%"V§ = param1;
      }
      
      public function §2!d§() : Number
      {
         return this.§%"V§;
      }
      
      public function §3"`§(param1:Number) : void
      {
         this.§="w§ = param1;
      }
      
      public function §8k§() : Number
      {
         return this.§="w§;
      }
      
      public function §]#K§(param1:Number) : void
      {
         this.§>"m§ = param1;
      }
      
      public function §##J§() : Number
      {
         return this.§>"m§;
      }
      
      public function §#$3§(param1:Number) : void
      {
         this.§]#e§ = param1;
      }
      
      public function §5!n§() : Number
      {
         return this.§]#e§;
      }
      
      public function §1i§(param1:Number) : void
      {
         this.§``§ = param1;
      }
      
      public function §<!J§() : Number
      {
         return this.§``§;
      }
      
      public function §^$!§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§9!@§.graphics.lineStyle(this.§="w§,param3.color,this.§>"m§);
         this.§9!@§.graphics.moveTo(param1[0].x * this.§%"V§,param1[0].y * this.§%"V§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§9!@§.graphics.lineTo(param1[_loc4_].x * this.§%"V§,param1[_loc4_].y * this.§%"V§);
            _loc4_++;
         }
         this.§9!@§.graphics.lineTo(param1[0].x * this.§%"V§,param1[0].y * this.§%"V§);
      }
      
      public function §?f§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§9!@§.graphics.lineStyle(this.§="w§,param3.color,this.§>"m§);
         this.§9!@§.graphics.moveTo(param1[0].x * this.§%"V§,param1[0].y * this.§%"V§);
         this.§9!@§.graphics.beginFill(param3.color,this.§]#e§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§9!@§.graphics.lineTo(param1[_loc4_].x * this.§%"V§,param1[_loc4_].y * this.§%"V§);
            _loc4_++;
         }
         this.§9!@§.graphics.lineTo(param1[0].x * this.§%"V§,param1[0].y * this.§%"V§);
         this.§9!@§.graphics.endFill();
      }
      
      public function § !f§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§9!@§.graphics.lineStyle(this.§="w§,param3.color,this.§>"m§);
         this.§9!@§.graphics.drawCircle(param1.x * this.§%"V§,param1.y * this.§%"V§,param2 * this.§%"V§);
      }
      
      public function §0!Z§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§9!@§.graphics.lineStyle(this.§="w§,param4.color,this.§>"m§);
         this.§9!@§.graphics.moveTo(0,0);
         this.§9!@§.graphics.beginFill(param4.color,this.§]#e§);
         this.§9!@§.graphics.drawCircle(param1.x * this.§%"V§,param1.y * this.§%"V§,param2 * this.§%"V§);
         this.§9!@§.graphics.endFill();
         this.§9!@§.graphics.moveTo(param1.x * this.§%"V§,param1.y * this.§%"V§);
         this.§9!@§.graphics.lineTo((param1.x + param3.x * param2) * this.§%"V§,(param1.y + param3.y * param2) * this.§%"V§);
      }
      
      public function §0#4§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§9!@§.graphics.lineStyle(this.§="w§,param3.color,this.§>"m§);
         this.§9!@§.graphics.moveTo(param1.x * this.§%"V§,param1.y * this.§%"V§);
         this.§9!@§.graphics.lineTo(param2.x * this.§%"V§,param2.y * this.§%"V§);
      }
      
      public function §?!#§(param1:b2Transform) : void
      {
         this.§9!@§.graphics.lineStyle(this.§="w§,16711680,this.§>"m§);
         this.§9!@§.graphics.moveTo(param1.position.x * this.§%"V§,param1.position.y * this.§%"V§);
         this.§9!@§.graphics.lineTo((param1.position.x + this.§``§ * param1.R.col1.x) * this.§%"V§,(param1.position.y + this.§``§ * param1.R.col1.y) * this.§%"V§);
         this.§9!@§.graphics.lineStyle(this.§="w§,65280,this.§>"m§);
         this.§9!@§.graphics.moveTo(param1.position.x * this.§%"V§,param1.position.y * this.§%"V§);
         this.§9!@§.graphics.lineTo((param1.position.x + this.§``§ * param1.R.col2.x) * this.§%"V§,(param1.position.y + this.§``§ * param1.R.col2.y) * this.§%"V§);
      }
   }
}
