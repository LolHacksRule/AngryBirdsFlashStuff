package §1x§
{
   import §9!s§.b2Color;
   import §9!s§.b2internal;
   import §^>§.b2Transform;
   import §^>§.b2Vec2;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §&!&§:uint = 1;
      
      public static var §?&§:uint = 2;
      
      public static var §"P§:uint = 4;
      
      public static var §'S§:uint = 8;
      
      public static var §+!!§:uint = 16;
      
      public static var §6!s§:uint = 32;
       
      
      private var §]##§:uint;
      
      b2internal var §]#1§:Sprite;
      
      private var §'"D§:Number = 1.0;
      
      private var §%"n§:Number = 1.0;
      
      private var §?"i§:Number = 1.0;
      
      private var §1">§:Number = 1.0;
      
      private var §`N§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§]##§ = 0;
      }
      
      public function §&!6§(param1:uint) : void
      {
         this.§]##§ = param1;
      }
      
      public function §+"F§() : uint
      {
         return this.§]##§;
      }
      
      public function §'!W§(param1:uint) : void
      {
         this.§]##§ |= param1;
      }
      
      public function §8"D§(param1:uint) : void
      {
         this.§]##§ &= ~param1;
      }
      
      public function §,%§(param1:Sprite) : void
      {
         this.§]#1§ = param1;
      }
      
      public function §%!W§() : Sprite
      {
         return this.§]#1§;
      }
      
      public function §!"Q§(param1:Number) : void
      {
         this.§'"D§ = param1;
      }
      
      public function §@!;§() : Number
      {
         return this.§'"D§;
      }
      
      public function §@#-§(param1:Number) : void
      {
         this.§%"n§ = param1;
      }
      
      public function §8"w§() : Number
      {
         return this.§%"n§;
      }
      
      public function §'x§(param1:Number) : void
      {
         this.§?"i§ = param1;
      }
      
      public function §5!0§() : Number
      {
         return this.§?"i§;
      }
      
      public function §9!o§(param1:Number) : void
      {
         this.§1">§ = param1;
      }
      
      public function §3!4§() : Number
      {
         return this.§1">§;
      }
      
      public function §3"1§(param1:Number) : void
      {
         this.§`N§ = param1;
      }
      
      public function §?"c§() : Number
      {
         return this.§`N§;
      }
      
      public function §@F§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§]#1§.graphics.lineStyle(this.§%"n§,param3.color,this.§?"i§);
         this.§]#1§.graphics.moveTo(param1[0].x * this.§'"D§,param1[0].y * this.§'"D§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§]#1§.graphics.lineTo(param1[_loc4_].x * this.§'"D§,param1[_loc4_].y * this.§'"D§);
            _loc4_++;
         }
         this.§]#1§.graphics.lineTo(param1[0].x * this.§'"D§,param1[0].y * this.§'"D§);
      }
      
      public function §%#"§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§]#1§.graphics.lineStyle(this.§%"n§,param3.color,this.§?"i§);
         this.§]#1§.graphics.moveTo(param1[0].x * this.§'"D§,param1[0].y * this.§'"D§);
         this.§]#1§.graphics.beginFill(param3.color,this.§1">§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§]#1§.graphics.lineTo(param1[_loc4_].x * this.§'"D§,param1[_loc4_].y * this.§'"D§);
            _loc4_++;
         }
         this.§]#1§.graphics.lineTo(param1[0].x * this.§'"D§,param1[0].y * this.§'"D§);
         this.§]#1§.graphics.endFill();
      }
      
      public function §?"l§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§]#1§.graphics.lineStyle(this.§%"n§,param3.color,this.§?"i§);
         this.§]#1§.graphics.drawCircle(param1.x * this.§'"D§,param1.y * this.§'"D§,param2 * this.§'"D§);
      }
      
      public function §'"C§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§]#1§.graphics.lineStyle(this.§%"n§,param4.color,this.§?"i§);
         this.§]#1§.graphics.moveTo(0,0);
         this.§]#1§.graphics.beginFill(param4.color,this.§1">§);
         this.§]#1§.graphics.drawCircle(param1.x * this.§'"D§,param1.y * this.§'"D§,param2 * this.§'"D§);
         this.§]#1§.graphics.endFill();
         this.§]#1§.graphics.moveTo(param1.x * this.§'"D§,param1.y * this.§'"D§);
         this.§]#1§.graphics.lineTo((param1.x + param3.x * param2) * this.§'"D§,(param1.y + param3.y * param2) * this.§'"D§);
      }
      
      public function §;x§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§]#1§.graphics.lineStyle(this.§%"n§,param3.color,this.§?"i§);
         this.§]#1§.graphics.moveTo(param1.x * this.§'"D§,param1.y * this.§'"D§);
         this.§]#1§.graphics.lineTo(param2.x * this.§'"D§,param2.y * this.§'"D§);
      }
      
      public function §6e§(param1:b2Transform) : void
      {
         this.§]#1§.graphics.lineStyle(this.§%"n§,16711680,this.§?"i§);
         this.§]#1§.graphics.moveTo(param1.position.x * this.§'"D§,param1.position.y * this.§'"D§);
         this.§]#1§.graphics.lineTo((param1.position.x + this.§`N§ * param1.R.col1.x) * this.§'"D§,(param1.position.y + this.§`N§ * param1.R.col1.y) * this.§'"D§);
         this.§]#1§.graphics.lineStyle(this.§%"n§,65280,this.§?"i§);
         this.§]#1§.graphics.moveTo(param1.position.x * this.§'"D§,param1.position.y * this.§'"D§);
         this.§]#1§.graphics.lineTo((param1.position.x + this.§`N§ * param1.R.col2.x) * this.§'"D§,(param1.position.y + this.§`N§ * param1.R.col2.y) * this.§'"D§);
      }
   }
}
