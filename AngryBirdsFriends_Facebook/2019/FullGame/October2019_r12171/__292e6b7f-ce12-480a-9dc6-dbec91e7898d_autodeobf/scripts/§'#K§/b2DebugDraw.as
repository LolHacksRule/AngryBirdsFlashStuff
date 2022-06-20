package §'#K§
{
   import §&$+§.b2Color;
   import §&$+§.b2internal;
   import §04§.b2Transform;
   import §04§.b2Vec2;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §,$!§:uint = 1;
      
      public static var §?!;§:uint = 2;
      
      public static var §<S§:uint = 4;
      
      public static var §6#u§:uint = 8;
      
      public static var §-!y§:uint = 16;
      
      public static var §3$=§:uint = 32;
       
      
      private var §"#[§:uint;
      
      b2internal var §<f§:Sprite;
      
      private var §7$ §:Number = 1.0;
      
      private var §?!7§:Number = 1.0;
      
      private var §;9§:Number = 1.0;
      
      private var §"#K§:Number = 1.0;
      
      private var §!§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§"#[§ = 0;
      }
      
      public function §]!!§(param1:uint) : void
      {
         this.§"#[§ = param1;
      }
      
      public function §5l§() : uint
      {
         return this.§"#[§;
      }
      
      public function §72§(param1:uint) : void
      {
         this.§"#[§ |= param1;
      }
      
      public function §&">§(param1:uint) : void
      {
         this.§"#[§ &= ~param1;
      }
      
      public function §!b§(param1:Sprite) : void
      {
         this.§<f§ = param1;
      }
      
      public function §6e§() : Sprite
      {
         return this.§<f§;
      }
      
      public function §5!D§(param1:Number) : void
      {
         this.§7$ § = param1;
      }
      
      public function §5"H§() : Number
      {
         return this.§7$ §;
      }
      
      public function §@"O§(param1:Number) : void
      {
         this.§?!7§ = param1;
      }
      
      public function §;!H§() : Number
      {
         return this.§?!7§;
      }
      
      public function §6$#§(param1:Number) : void
      {
         this.§;9§ = param1;
      }
      
      public function §^"K§() : Number
      {
         return this.§;9§;
      }
      
      public function §&#W§(param1:Number) : void
      {
         this.§"#K§ = param1;
      }
      
      public function §1$@§() : Number
      {
         return this.§"#K§;
      }
      
      public function §+u§(param1:Number) : void
      {
         this.§!§ = param1;
      }
      
      public function §?!J§() : Number
      {
         return this.§!§;
      }
      
      public function §!e§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§<f§.graphics.lineStyle(this.§?!7§,param3.color,this.§;9§);
         this.§<f§.graphics.moveTo(param1[0].x * this.§7$ §,param1[0].y * this.§7$ §);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§<f§.graphics.lineTo(param1[_loc4_].x * this.§7$ §,param1[_loc4_].y * this.§7$ §);
            _loc4_++;
         }
         this.§<f§.graphics.lineTo(param1[0].x * this.§7$ §,param1[0].y * this.§7$ §);
      }
      
      public function §+#r§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§<f§.graphics.lineStyle(this.§?!7§,param3.color,this.§;9§);
         this.§<f§.graphics.moveTo(param1[0].x * this.§7$ §,param1[0].y * this.§7$ §);
         this.§<f§.graphics.beginFill(param3.color,this.§"#K§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§<f§.graphics.lineTo(param1[_loc4_].x * this.§7$ §,param1[_loc4_].y * this.§7$ §);
            _loc4_++;
         }
         this.§<f§.graphics.lineTo(param1[0].x * this.§7$ §,param1[0].y * this.§7$ §);
         this.§<f§.graphics.endFill();
      }
      
      public function §9!y§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§<f§.graphics.lineStyle(this.§?!7§,param3.color,this.§;9§);
         this.§<f§.graphics.drawCircle(param1.x * this.§7$ §,param1.y * this.§7$ §,param2 * this.§7$ §);
      }
      
      public function §-#D§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§<f§.graphics.lineStyle(this.§?!7§,param4.color,this.§;9§);
         this.§<f§.graphics.moveTo(0,0);
         this.§<f§.graphics.beginFill(param4.color,this.§"#K§);
         this.§<f§.graphics.drawCircle(param1.x * this.§7$ §,param1.y * this.§7$ §,param2 * this.§7$ §);
         this.§<f§.graphics.endFill();
         this.§<f§.graphics.moveTo(param1.x * this.§7$ §,param1.y * this.§7$ §);
         this.§<f§.graphics.lineTo((param1.x + param3.x * param2) * this.§7$ §,(param1.y + param3.y * param2) * this.§7$ §);
      }
      
      public function §0"G§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§<f§.graphics.lineStyle(this.§?!7§,param3.color,this.§;9§);
         this.§<f§.graphics.moveTo(param1.x * this.§7$ §,param1.y * this.§7$ §);
         this.§<f§.graphics.lineTo(param2.x * this.§7$ §,param2.y * this.§7$ §);
      }
      
      public function §&#9§(param1:b2Transform) : void
      {
         this.§<f§.graphics.lineStyle(this.§?!7§,16711680,this.§;9§);
         this.§<f§.graphics.moveTo(param1.position.x * this.§7$ §,param1.position.y * this.§7$ §);
         this.§<f§.graphics.lineTo((param1.position.x + this.§!§ * param1.R.col1.x) * this.§7$ §,(param1.position.y + this.§!§ * param1.R.col1.y) * this.§7$ §);
         this.§<f§.graphics.lineStyle(this.§?!7§,65280,this.§;9§);
         this.§<f§.graphics.moveTo(param1.position.x * this.§7$ §,param1.position.y * this.§7$ §);
         this.§<f§.graphics.lineTo((param1.position.x + this.§!§ * param1.R.col2.x) * this.§7$ §,(param1.position.y + this.§!§ * param1.R.col2.y) * this.§7$ §);
      }
   }
}
