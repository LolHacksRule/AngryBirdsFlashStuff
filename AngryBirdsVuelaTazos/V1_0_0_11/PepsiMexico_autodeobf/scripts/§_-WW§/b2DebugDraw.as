package §_-WW§
{
   import §_-dx§.b2Transform;
   import §_-dx§.b2Vec2;
   import §_-iO§.b2Color;
   import §_-iO§.b2internal;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §_-1W§:uint = 1;
      
      public static var §_-aP§:uint = 2;
      
      public static var §_-G2§:uint = 4;
      
      public static var §_-AA§:uint = 8;
      
      public static var §_-as§:uint = 16;
      
      public static var §_-QK§:uint = 32;
       
      
      private var §_-JP§:uint;
      
      b2internal var §_-ov§:Sprite;
      
      private var §_-xE§:Number = 1.0;
      
      private var §_-iI§:Number = 1.0;
      
      private var §_-iM§:Number = 1.0;
      
      private var §_-N7§:Number = 1.0;
      
      private var §_-CM§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§_-JP§ = 0;
      }
      
      public function §_-sF§(param1:uint) : void
      {
         this.§_-JP§ = param1;
      }
      
      public function §_-fk§() : uint
      {
         return this.§_-JP§;
      }
      
      public function §_-qP§(param1:uint) : void
      {
         this.§_-JP§ |= param1;
      }
      
      public function §_-xQ§(param1:uint) : void
      {
         this.§_-JP§ &= ~param1;
      }
      
      public function §_-If§(param1:Sprite) : void
      {
         this.§_-ov§ = param1;
      }
      
      public function §_-Vl§() : Sprite
      {
         return this.§_-ov§;
      }
      
      public function §_-l-§(param1:Number) : void
      {
         this.§_-xE§ = param1;
      }
      
      public function §_-MX§() : Number
      {
         return this.§_-xE§;
      }
      
      public function §_-Kj§(param1:Number) : void
      {
         this.§_-iI§ = param1;
      }
      
      public function §_-VM§() : Number
      {
         return this.§_-iI§;
      }
      
      public function §_-K2§(param1:Number) : void
      {
         this.§_-iM§ = param1;
      }
      
      public function §_-wW§() : Number
      {
         return this.§_-iM§;
      }
      
      public function §_-0J§(param1:Number) : void
      {
         this.§_-N7§ = param1;
      }
      
      public function §_-gM§() : Number
      {
         return this.§_-N7§;
      }
      
      public function §_-MI§(param1:Number) : void
      {
         this.§_-CM§ = param1;
      }
      
      public function §_-q5§() : Number
      {
         return this.§_-CM§;
      }
      
      public function §_-ut§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§_-ov§.graphics.lineStyle(this.§_-iI§,param3.color,this.§_-iM§);
         this.§_-ov§.graphics.moveTo(param1[0].x * this.§_-xE§,param1[0].y * this.§_-xE§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§_-ov§.graphics.lineTo(param1[_loc4_].x * this.§_-xE§,param1[_loc4_].y * this.§_-xE§);
            _loc4_++;
         }
         this.§_-ov§.graphics.lineTo(param1[0].x * this.§_-xE§,param1[0].y * this.§_-xE§);
      }
      
      public function §_-SP§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§_-ov§.graphics.lineStyle(this.§_-iI§,param3.color,this.§_-iM§);
         this.§_-ov§.graphics.moveTo(param1[0].x * this.§_-xE§,param1[0].y * this.§_-xE§);
         this.§_-ov§.graphics.beginFill(param3.color,this.§_-N7§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§_-ov§.graphics.lineTo(param1[_loc4_].x * this.§_-xE§,param1[_loc4_].y * this.§_-xE§);
            _loc4_++;
         }
         this.§_-ov§.graphics.lineTo(param1[0].x * this.§_-xE§,param1[0].y * this.§_-xE§);
         this.§_-ov§.graphics.endFill();
      }
      
      public function §_-3X§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§_-ov§.graphics.lineStyle(this.§_-iI§,param3.color,this.§_-iM§);
         this.§_-ov§.graphics.drawCircle(param1.x * this.§_-xE§,param1.y * this.§_-xE§,param2 * this.§_-xE§);
      }
      
      public function §_-OP§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§_-ov§.graphics.lineStyle(this.§_-iI§,param4.color,this.§_-iM§);
         this.§_-ov§.graphics.moveTo(0,0);
         this.§_-ov§.graphics.beginFill(param4.color,this.§_-N7§);
         this.§_-ov§.graphics.drawCircle(param1.x * this.§_-xE§,param1.y * this.§_-xE§,param2 * this.§_-xE§);
         this.§_-ov§.graphics.endFill();
         this.§_-ov§.graphics.moveTo(param1.x * this.§_-xE§,param1.y * this.§_-xE§);
         this.§_-ov§.graphics.lineTo((param1.x + param3.x * param2) * this.§_-xE§,(param1.y + param3.y * param2) * this.§_-xE§);
      }
      
      public function §_-ee§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§_-ov§.graphics.lineStyle(this.§_-iI§,param3.color,this.§_-iM§);
         this.§_-ov§.graphics.moveTo(param1.x * this.§_-xE§,param1.y * this.§_-xE§);
         this.§_-ov§.graphics.lineTo(param2.x * this.§_-xE§,param2.y * this.§_-xE§);
      }
      
      public function §_-qm§(param1:b2Transform) : void
      {
         this.§_-ov§.graphics.lineStyle(this.§_-iI§,16711680,this.§_-iM§);
         this.§_-ov§.graphics.moveTo(param1.position.x * this.§_-xE§,param1.position.y * this.§_-xE§);
         this.§_-ov§.graphics.lineTo((param1.position.x + this.§_-CM§ * param1.R.col1.x) * this.§_-xE§,(param1.position.y + this.§_-CM§ * param1.R.col1.y) * this.§_-xE§);
         this.§_-ov§.graphics.lineStyle(this.§_-iI§,65280,this.§_-iM§);
         this.§_-ov§.graphics.moveTo(param1.position.x * this.§_-xE§,param1.position.y * this.§_-xE§);
         this.§_-ov§.graphics.lineTo((param1.position.x + this.§_-CM§ * param1.R.col2.x) * this.§_-xE§,(param1.position.y + this.§_-CM§ * param1.R.col2.y) * this.§_-xE§);
      }
   }
}
