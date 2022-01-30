package §0!j§
{
   import §!r§.b2Color;
   import §!r§.b2internal;
   import §-!2§.b2Transform;
   import §-!2§.b2Vec2;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §@!"§:uint = 1;
      
      public static var §#"6§:uint = 2;
      
      public static var §?0§:uint = 4;
      
      public static var § !g§:uint = 8;
      
      public static var §'h§:uint = 16;
      
      public static var §""6§:uint = 32;
       
      
      private var §0t§:uint;
      
      b2internal var §9!;§:Sprite;
      
      private var §&!h§:Number = 1.0;
      
      private var §4v§:Number = 1.0;
      
      private var §`!4§:Number = 1.0;
      
      private var §4!2§:Number = 1.0;
      
      private var §^"!§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.§0t§ = 0;
      }
      
      public function §-O§(param1:uint) : void
      {
         this.§0t§ = param1;
      }
      
      public function §7§() : uint
      {
         return this.§0t§;
      }
      
      public function §<!a§(param1:uint) : void
      {
         this.§0t§ |= param1;
      }
      
      public function §,!N§(param1:uint) : void
      {
         this.§0t§ &= ~param1;
      }
      
      public function §+@§(param1:Sprite) : void
      {
         this.§9!;§ = param1;
      }
      
      public function §9K§() : Sprite
      {
         return this.§9!;§;
      }
      
      public function §"x§(param1:Number) : void
      {
         this.§&!h§ = param1;
      }
      
      public function §8!+§() : Number
      {
         return this.§&!h§;
      }
      
      public function §>!U§(param1:Number) : void
      {
         this.§4v§ = param1;
      }
      
      public function §-^§() : Number
      {
         return this.§4v§;
      }
      
      public function §85§(param1:Number) : void
      {
         this.§`!4§ = param1;
      }
      
      public function §@;§() : Number
      {
         return this.§`!4§;
      }
      
      public function §4_§(param1:Number) : void
      {
         this.§4!2§ = param1;
      }
      
      public function §?k§() : Number
      {
         return this.§4!2§;
      }
      
      public function §>!v§(param1:Number) : void
      {
         this.§^"!§ = param1;
      }
      
      public function §^!b§() : Number
      {
         return this.§^"!§;
      }
      
      public function §?!R§(param1:Array, param2:int, param3:b2Color) : void
      {
         this.§9!;§.graphics.lineStyle(this.§4v§,param3.color,this.§`!4§);
         this.§9!;§.graphics.moveTo(param1[0].x * this.§&!h§,param1[0].y * this.§&!h§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§9!;§.graphics.lineTo(param1[_loc4_].x * this.§&!h§,param1[_loc4_].y * this.§&!h§);
            _loc4_++;
         }
         this.§9!;§.graphics.lineTo(param1[0].x * this.§&!h§,param1[0].y * this.§&!h§);
      }
      
      public function §6"#§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this.§9!;§.graphics.lineStyle(this.§4v§,param3.color,this.§`!4§);
         this.§9!;§.graphics.moveTo(param1[0].x * this.§&!h§,param1[0].y * this.§&!h§);
         this.§9!;§.graphics.beginFill(param3.color,this.§4!2§);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this.§9!;§.graphics.lineTo(param1[_loc4_].x * this.§&!h§,param1[_loc4_].y * this.§&!h§);
            _loc4_++;
         }
         this.§9!;§.graphics.lineTo(param1[0].x * this.§&!h§,param1[0].y * this.§&!h§);
         this.§9!;§.graphics.endFill();
      }
      
      public function §6!l§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this.§9!;§.graphics.lineStyle(this.§4v§,param3.color,this.§`!4§);
         this.§9!;§.graphics.drawCircle(param1.x * this.§&!h§,param1.y * this.§&!h§,param2 * this.§&!h§);
      }
      
      public function §[t§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this.§9!;§.graphics.lineStyle(this.§4v§,param4.color,this.§`!4§);
         this.§9!;§.graphics.moveTo(0,0);
         this.§9!;§.graphics.beginFill(param4.color,this.§4!2§);
         this.§9!;§.graphics.drawCircle(param1.x * this.§&!h§,param1.y * this.§&!h§,param2 * this.§&!h§);
         this.§9!;§.graphics.endFill();
         this.§9!;§.graphics.moveTo(param1.x * this.§&!h§,param1.y * this.§&!h§);
         this.§9!;§.graphics.lineTo((param1.x + param3.x * param2) * this.§&!h§,(param1.y + param3.y * param2) * this.§&!h§);
      }
      
      public function §<!H§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this.§9!;§.graphics.lineStyle(this.§4v§,param3.color,this.§`!4§);
         this.§9!;§.graphics.moveTo(param1.x * this.§&!h§,param1.y * this.§&!h§);
         this.§9!;§.graphics.lineTo(param2.x * this.§&!h§,param2.y * this.§&!h§);
      }
      
      public function §2_§(param1:b2Transform) : void
      {
         this.§9!;§.graphics.lineStyle(this.§4v§,16711680,this.§`!4§);
         this.§9!;§.graphics.moveTo(param1.position.x * this.§&!h§,param1.position.y * this.§&!h§);
         this.§9!;§.graphics.lineTo((param1.position.x + this.§^"!§ * param1.R.col1.x) * this.§&!h§,(param1.position.y + this.§^"!§ * param1.R.col1.y) * this.§&!h§);
         this.§9!;§.graphics.lineStyle(this.§4v§,65280,this.§`!4§);
         this.§9!;§.graphics.moveTo(param1.position.x * this.§&!h§,param1.position.y * this.§&!h§);
         this.§9!;§.graphics.lineTo((param1.position.x + this.§^"!§ * param1.R.col2.x) * this.§&!h§,(param1.position.y + this.§^"!§ * param1.R.col2.y) * this.§&!h§);
      }
   }
}
